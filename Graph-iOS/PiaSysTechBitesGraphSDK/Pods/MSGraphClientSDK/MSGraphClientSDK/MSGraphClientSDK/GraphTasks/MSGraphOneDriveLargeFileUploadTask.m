//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSGraphOneDriveLargeFileUploadTask.h"
#import "MSConstants.h"

@interface MSGraphOneDriveLargeFileUploadTask()

@end

@implementation MSGraphOneDriveLargeFileUploadTask


+(void)createOneDriveLargeFileUploadTaskWithHTTPClient:(MSHTTPClient *)httpClient fileData:(NSData *)fileData fileName:(NSString *)fileName filePath:(NSString *)filePath andChunkSize:(NSInteger)chunkSize withCompletion:(OneDriveLargeFileUploadTaskInitCompletionHandler)completionHandler
{
    NSMutableURLRequest *createSessionRequest = [MSGraphOneDriveLargeFileUploadTask createUploadSessionRequestWithFileName:fileName filePath:filePath];

    [MSGraphOneDriveLargeFileUploadTask createUploadSessionFromRequest:createSessionRequest andHTTPClient:httpClient completionBlock:^(id data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(!error)
        {
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            if(dictionary && [dictionary objectForKey:@"uploadUrl"])
            {
                completionHandler([[MSGraphOneDriveLargeFileUploadTask alloc] initWithClient:httpClient fileData:fileData uploadSessionDictionary:dictionary andChunkSize:chunkSize], data, response, error);
            }else
            {
                completionHandler(nil, data, response, error);
            }
        }else
        {
            completionHandler(nil, data, response, error);
        }
    }];

}

+ (NSMutableURLRequest *)createUploadSessionRequestWithFileName:(NSString *)fileName filePath:(NSString *)filePath
{
    NSString *onerDriveUrlString = [NSString stringWithFormat:@"%@/me/drive/root:/%@/%@:/createUploadSession",MSGraphBaseURL,filePath,fileName];

    NSMutableURLRequest *urlReuqest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:onerDriveUrlString]];
    [urlReuqest setHTTPMethod:@"POST"];
    return urlReuqest;
}

@end
