//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSHTTPClient.h"

#define DefaultChunkSize 5*1024*1024
#define RequiredChunkSizeIncrement 320*1024

/*
 This class is Generic base class for large file upload tasks and handles all the basic functionalities of a large file uploader
 */

@interface MSLargeFileUploadTask : NSObject

/*
 Initializes and returns an instance of MSLargeFileUploadTask class
 @param httpClient Instance of MSHTTPClient which will be used to make API calls
 @param fileData Data of the file which needs to be chunked and uploaded.
 @param uploadSessionDictionary Dictionary containing upload session url
 @param chunkSize Size of a small chunk which the file will be split into. Should be in multiples of 320KB. Default value is 5MB.
 @return MSLargeFileUploadTask instance
 */
-(instancetype)initWithClient:(nonnull MSHTTPClient *)httpClient fileData:(nonnull NSData *)fileData uploadSessionDictionary:(nonnull NSDictionary *)uploadSessionDictionary andChunkSize:(NSInteger)chunkSize;

/*
 This function will start uploading all the small segments of the file one by one returning the response in completion handler in case there is any error or the upload process gets completed.
 @param completionHandler Completion Handler to be calles in event of any error or successfull completion
 */
- (void)uploadWithCompletion:(HTTPRequestCompletionHandler)completionHandler;

/*
 This class function can be used to create upload session for a given request object.
 @param urlRequest The request object containing target url
 @param httpClient The MSHTTPClient object which will be used to make this API call for sesison creation
 @param completionHandler The completion handler to be called when this process finishes.
 */
+ (void)createUploadSessionFromRequest:(NSMutableURLRequest *)urlRequest andHTTPClient:(MSHTTPClient *)httpClient completionBlock:(HTTPRequestCompletionHandler)completionHandler;

@end
