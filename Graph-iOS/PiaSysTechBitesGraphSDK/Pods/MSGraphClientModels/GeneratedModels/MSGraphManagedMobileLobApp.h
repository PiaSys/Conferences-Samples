// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMobileAppContent; 


#import "MSGraphManagedApp.h"

@interface MSGraphManagedMobileLobApp : MSGraphManagedApp

  @property (nullable, nonatomic, setter=setCommittedContentVersion:, getter=committedContentVersion) NSString* committedContentVersion;
    @property (nullable, nonatomic, setter=setFileName:, getter=fileName) NSString* fileName;
    @property (nonatomic, setter=setSize:, getter=size) int64_t size;
    @property (nullable, nonatomic, setter=setContentVersions:, getter=contentVersions) NSArray* contentVersions;
  
@end
