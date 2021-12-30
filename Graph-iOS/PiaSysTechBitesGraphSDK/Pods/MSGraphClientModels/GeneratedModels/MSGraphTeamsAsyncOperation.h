// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphOperationError; 
#import "MSGraphTeamsAsyncOperationType.h"
#import "MSGraphTeamsAsyncOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphTeamsAsyncOperation : MSGraphEntity

  @property (nonnull, nonatomic, setter=setOperationType:, getter=operationType) MSGraphTeamsAsyncOperationType* operationType;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphTeamsAsyncOperationStatus* status;
    @property (nonnull, nonatomic, setter=setLastActionDateTime:, getter=lastActionDateTime) NSDate* lastActionDateTime;
    @property (nonatomic, setter=setAttemptsCount:, getter=attemptsCount) int32_t attemptsCount;
    @property (nullable, nonatomic, setter=setTargetResourceId:, getter=targetResourceId) NSString* targetResourceId;
    @property (nullable, nonatomic, setter=setTargetResourceLocation:, getter=targetResourceLocation) NSString* targetResourceLocation;
    @property (nullable, nonatomic, setter=setError:, getter=error) MSGraphOperationError* error;
  
@end
