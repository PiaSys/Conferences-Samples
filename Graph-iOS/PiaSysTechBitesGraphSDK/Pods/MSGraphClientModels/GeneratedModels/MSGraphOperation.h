// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphOperationStatus* status;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setLastActionDateTime:, getter=lastActionDateTime) NSDate* lastActionDateTime;
  
@end
