//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSLargeFileUploadTask.h"
#import "MSURLSessionDataTask.h"

@interface MSLargeFileUploadTask()

@property (nonatomic, strong) MSHTTPClient *httpClient;
@property (nonatomic, strong) NSData *fileData;
@property (nonatomic, strong) NSDictionary *uploadSessionDictionary;
@property (nonatomic) NSInteger chunkSize;
@property (nonatomic) NSRange currentRange;

@end

@implementation MSLargeFileUploadTask

-(instancetype)initWithClient:(MSHTTPClient *)httpClient fileData:(NSData *)fileData uploadSessionDictionary:(NSDictionary *)uploadSessionDictionary andChunkSize:(NSInteger)chunkSize
{
    self = [super init];
    if(self)
    {
        self.httpClient = httpClient;
        NSAssert(self.httpClient, @"HTTP Client is requried to make API calls");
        self.fileData = fileData;
        NSAssert(self.fileData, @"File data should not nil");
        NSAssert(self.fileData.length!=0, @"File data should not be empty");
        self.uploadSessionDictionary = uploadSessionDictionary;
        NSAssert([self.uploadSessionDictionary objectForKey:@"uploadUrl"], @"UploadSessionDictionary should contain a uploadUrl key");
        self.chunkSize = chunkSize<=0 ? DefaultChunkSize : chunkSize;
        NSAssert(self.chunkSize % RequiredChunkSizeIncrement ==0, @"Chunk size must be a multiple of 320 KiB");

        self.currentRange = NSMakeRange(0, self.chunkSize);
    }
    return self;
}

- (void)uploadWithCompletion:(HTTPRequestCompletionHandler)completionHandler
{
    [self uploadNextSegmentWithCompletion:completionHandler];
}

- (void)setNextRange
{
    NSInteger start = self.currentRange.location+self.currentRange.length;
    NSInteger length = start+_chunkSize>self.fileData.length?self.fileData.length-start:_chunkSize;
    self.currentRange = NSMakeRange(start,length);
}

- (void)uploadNextSegmentWithCompletion:(HTTPRequestCompletionHandler)completionHandler
{
    //Create request
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:self.uploadSessionDictionary[@"uploadUrl"]]];

    //Set headers
    [urlRequest setValue:[NSString stringWithFormat:@"%ld",(long)_chunkSize] forHTTPHeaderField:@"Content-Length"];
    [urlRequest setValue:[NSString stringWithFormat:@"bytes %lu-%lu/%lu",(unsigned long)self.currentRange.location,(unsigned long)self.currentRange.location+self.currentRange.length-1,(unsigned long)self.fileData.length] forHTTPHeaderField:@"Content-Range"];

    //Set method
    [urlRequest setHTTPMethod:@"PUT"];

    //Set http body
    NSData *subData = [self.fileData subdataWithRange:self.currentRange];
    [urlRequest setHTTPBody:subData];

    //Start upload
    MSURLSessionDataTask *uploadTask = [self.httpClient dataTaskWithRequest:urlRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if([(NSHTTPURLResponse *)response statusCode] == MSExpectedResponseCodesAccepted)
        {
            [self setNextRange];
            [self uploadNextSegmentWithCompletion:completionHandler];
        }else
        {
            NSDictionary *dataDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            if(dataDict[@"id"])
            {
                completionHandler(data, response, error);
            }else
            {
                [self uploadNextSegmentWithCompletion:completionHandler];
            }
        }

    }];
    [uploadTask execute];
}

+ (void)createUploadSessionFromRequest:(NSMutableURLRequest *)urlRequest andHTTPClient:(MSHTTPClient *)httpClient completionBlock:(HTTPRequestCompletionHandler)completionHandler
{
    MSURLSessionDataTask *dataTask = [httpClient dataTaskWithRequest:urlRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        completionHandler(data, response, error);
    }];
    [dataTask execute];
}

@end
