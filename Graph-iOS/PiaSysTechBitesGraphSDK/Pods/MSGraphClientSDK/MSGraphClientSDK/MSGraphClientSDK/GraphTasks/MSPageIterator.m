//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSPageIterator.h"
#import "MSURLSessionDataTask.h"

@interface MSPageIterator()

@property (nonatomic, strong) MSPageIteratorBlock iteratorCompletionBlock;
@property (nonatomic, strong) NSDictionary *dataDictionary;
@property (nonatomic, strong) MSHTTPClient *httpClient;
@property (nonatomic, strong) MSURLSessionDataTask *dataTask;

@end

@implementation MSPageIterator
@synthesize isComplete;

- (instancetype)initWithData:(nonnull NSData *)data client:(nonnull MSHTTPClient *)httpClient andIteratorBlock:(nonnull MSPageIteratorBlock)iteratorBlock
{
    self = [super init];
    if(self)
    {
        NSParameterAssert(data);
        NSParameterAssert(httpClient);
        NSParameterAssert(iteratorBlock);
        
        isComplete = NO;
        _dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        _httpClient = httpClient;
        _iteratorCompletionBlock = iteratorBlock;
    }
    return self;
}

- (void)iterate
{
    BOOL stop = NO;
    for (NSDictionary *dictionary in [self.dataDictionary objectForKey:@"value"])
    {
        _iteratorCompletionBlock(dictionary, &stop);
        if (stop)
        {
            break;
        }
    }
    if(![self.dataDictionary objectForKey:@"@odata.nextLink"] ||
       [[self.dataDictionary objectForKey:@"@odata.nextLink"] isEqualToString:@""])
    {
        stop = YES;
        isComplete = YES;
        _iteratorCompletionBlock(nil, &stop);
    }else if(!stop)
    {
        [self createNextPageTask];
        [self fetchNextPage];
    }
}

- (void)fetchNextPage
{
    [_dataTask execute];
}

- (void)createNextPageTask
{
    NSString *nextPageURLString = [self.dataDictionary objectForKey:@"@odata.nextLink"];
    _dataTask = [_httpClient dataTaskWithRequest:[NSMutableURLRequest requestWithURL:[NSURL URLWithString:nextPageURLString]] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if(!error && [(NSHTTPURLResponse *)response statusCode] == 200)
        {
            self->_dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            [self iterate];
        }
    }];
}

@end
