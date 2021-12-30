// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphSubscription : MSGraphEntity

  @property (nonnull, nonatomic, setter=setResource:, getter=resource) NSString* resource;
    @property (nonnull, nonatomic, setter=setChangeType:, getter=changeType) NSString* changeType;
    @property (nullable, nonatomic, setter=setClientState:, getter=clientState) NSString* clientState;
    @property (nonnull, nonatomic, setter=setNotificationUrl:, getter=notificationUrl) NSString* notificationUrl;
    @property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nullable, nonatomic, setter=setApplicationId:, getter=applicationId) NSString* applicationId;
    @property (nullable, nonatomic, setter=setCreatorId:, getter=creatorId) NSString* creatorId;
  
@end
