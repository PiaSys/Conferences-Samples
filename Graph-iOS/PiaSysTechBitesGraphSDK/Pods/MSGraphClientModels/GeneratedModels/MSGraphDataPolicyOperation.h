// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDataPolicyOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphDataPolicyOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) NSDate* completedDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphDataPolicyOperationStatus* status;
    @property (nullable, nonatomic, setter=setStorageLocation:, getter=storageLocation) NSString* storageLocation;
    @property (nonnull, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nonnull, nonatomic, setter=setSubmittedDateTime:, getter=submittedDateTime) NSDate* submittedDateTime;
    @property (nonatomic, setter=setProgress:, getter=progress) double progress;
  
@end
