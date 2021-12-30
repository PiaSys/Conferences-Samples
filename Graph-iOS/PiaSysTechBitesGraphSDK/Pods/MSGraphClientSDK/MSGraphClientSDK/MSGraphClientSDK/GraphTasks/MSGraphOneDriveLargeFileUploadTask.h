//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//
#import <Foundation/Foundation.h>
#import "MSLargeFileUploadTask.h"


@class MSGraphOneDriveLargeFileUploadTask;

/**
 Completion handler to be called from MSGraphOneDriveLargeFileUploadTask on instance creation.
 */
typedef void (^OneDriveLargeFileUploadTaskInitCompletionHandler)(MSGraphOneDriveLargeFileUploadTask *fileUploadTask, NSData *data, NSURLResponse *response, NSError *error);

/**
 This class extends the generic MSLargeFileUploadTask to provide one drive specific dependency injection
 */
@interface MSGraphOneDriveLargeFileUploadTask : MSLargeFileUploadTask


/*
 Creates an instance of MSLargeFileUploadTask class. Please not that you will have to call the base class's uploadWithCompletion: method on the instance which gets returned.
 @param httpClient Instance of MSHTTPClient which will be used to make API calls
 @param fileData Data of the file which needs to be chunked and uploaded.
 @param fileName Name of the file which will be given to item after successfull upload.
 @param filePath Path of the file where this should be put in the One Drive. For example - Documents/Office/LargeFiles
 @param chunkSize Size of a small chunk which the file will be split into. Should be in multiples of 320KB. Default value is 5MB.
 @param completionHandler CompletionHandler to be called on completion of this creation process.
 */
+(void)createOneDriveLargeFileUploadTaskWithHTTPClient:(nonnull MSHTTPClient *)httpClient fileData:(nonnull NSData *)fileData fileName:(nonnull NSString *)fileName filePath:(NSString *)filePath andChunkSize:(NSInteger)chunkSize withCompletion:(OneDriveLargeFileUploadTaskInitCompletionHandler)completionHandler;

@end
