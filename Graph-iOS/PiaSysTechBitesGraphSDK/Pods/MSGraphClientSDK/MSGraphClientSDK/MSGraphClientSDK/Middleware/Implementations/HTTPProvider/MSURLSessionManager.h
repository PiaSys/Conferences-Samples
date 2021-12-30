//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSHttpProvider.h"
/**
 * 'MSURLSessionManager' manages all Http access from the Graph SDK, it conforms to the MSHttpProvider protocol
 */
@interface MSURLSessionManager : NSObject <MSHttpProvider,
                                            NSURLSessionDelegate,
                                            NSURLSessionDataDelegate,
                                            NSURLSessionTaskDelegate,
                                            NSURLSessionDownloadDelegate>

/**
 *  Creates an instance of MSURLSessionManager with the given configuration.
 *  @param  urlSessionConfiguration the session configuration to use
 *  @return the instance of MSURLSessionManager
 *  @warning the MSURLSessionManager currently uses the same NSURLSession for data/download/upload tasks.  
 *           If you use a background session you must be sure to not invoke any data requests.
 */
- (instancetype)initWithSessionConfiguration:(NSURLSessionConfiguration *)urlSessionConfiguration;

@end
