// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceComplianceActionType.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceComplianceActionItem : MSGraphEntity

  @property (nonatomic, setter=setGracePeriodHours:, getter=gracePeriodHours) int32_t gracePeriodHours;
    @property (nonnull, nonatomic, setter=setActionType:, getter=actionType) MSGraphDeviceComplianceActionType* actionType;
    @property (nullable, nonatomic, setter=setNotificationTemplateId:, getter=notificationTemplateId) NSString* notificationTemplateId;
    @property (nullable, nonatomic, setter=setNotificationMessageCCList:, getter=notificationMessageCCList) NSArray* notificationMessageCCList;
  
@end
