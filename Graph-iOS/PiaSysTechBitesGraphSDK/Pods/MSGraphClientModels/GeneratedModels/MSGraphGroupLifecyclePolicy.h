// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphGroupLifecyclePolicy : MSGraphEntity

  @property (nonatomic, setter=setGroupLifetimeInDays:, getter=groupLifetimeInDays) int32_t groupLifetimeInDays;
    @property (nullable, nonatomic, setter=setManagedGroupTypes:, getter=managedGroupTypes) NSString* managedGroupTypes;
    @property (nullable, nonatomic, setter=setAlternateNotificationEmails:, getter=alternateNotificationEmails) NSString* alternateNotificationEmails;
  
@end
