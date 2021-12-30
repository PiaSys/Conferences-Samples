// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphVisualInfo, NSDictionary, MSGraphActivityHistoryItem; 
#import "MSGraphStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphUserActivity : MSGraphEntity

  @property (nonnull, nonatomic, setter=setVisualElements:, getter=visualElements) MSGraphVisualInfo* visualElements;
    @property (nonnull, nonatomic, setter=setActivitySourceHost:, getter=activitySourceHost) NSString* activitySourceHost;
    @property (nonnull, nonatomic, setter=setActivationUrl:, getter=activationUrl) NSString* activationUrl;
    @property (nonnull, nonatomic, setter=setAppActivityId:, getter=appActivityId) NSString* appActivityId;
    @property (nullable, nonatomic, setter=setAppDisplayName:, getter=appDisplayName) NSString* appDisplayName;
    @property (nullable, nonatomic, setter=setContentUrl:, getter=contentUrl) NSString* contentUrl;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nullable, nonatomic, setter=setFallbackUrl:, getter=fallbackUrl) NSString* fallbackUrl;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setUserTimezone:, getter=userTimezone) NSString* userTimezone;
    @property (nullable, nonatomic, setter=setContentInfo:, getter=contentInfo) NSDictionary* contentInfo;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphStatus* status;
    @property (nullable, nonatomic, setter=setHistoryItems:, getter=historyItems) NSArray* historyItems;
  
@end
