// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserActivity; 
#import "MSGraphStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphActivityHistoryItem : MSGraphEntity

  @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphStatus* status;
    @property (nonatomic, setter=setActiveDurationSeconds:, getter=activeDurationSeconds) int32_t activeDurationSeconds;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setLastActiveDateTime:, getter=lastActiveDateTime) NSDate* lastActiveDateTime;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nonnull, nonatomic, setter=setStartedDateTime:, getter=startedDateTime) NSDate* startedDateTime;
    @property (nullable, nonatomic, setter=setUserTimezone:, getter=userTimezone) NSString* userTimezone;
    @property (nonnull, nonatomic, setter=setActivity:, getter=activity) MSGraphUserActivity* activity;
  
@end
