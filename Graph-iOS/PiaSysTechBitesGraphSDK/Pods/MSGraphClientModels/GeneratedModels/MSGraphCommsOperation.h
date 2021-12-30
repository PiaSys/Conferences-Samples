// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphResultInfo; 
#import "MSGraphOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphCommsOperation : MSGraphEntity

  @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphOperationStatus* status;
    @property (nullable, nonatomic, setter=setClientContext:, getter=clientContext) NSString* clientContext;
    @property (nullable, nonatomic, setter=setResultInfo:, getter=resultInfo) MSGraphResultInfo* resultInfo;
  
@end
