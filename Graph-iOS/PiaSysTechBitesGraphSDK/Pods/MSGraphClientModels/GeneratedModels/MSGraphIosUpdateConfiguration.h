// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSTimeOfDay; 
#import "MSGraphDayOfWeek.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphIosUpdateConfiguration : MSGraphDeviceConfiguration

  @property (nonnull, nonatomic, setter=setActiveHoursStart:, getter=activeHoursStart) MSTimeOfDay* activeHoursStart;
    @property (nonnull, nonatomic, setter=setActiveHoursEnd:, getter=activeHoursEnd) MSTimeOfDay* activeHoursEnd;
    @property (nonnull, nonatomic, setter=setScheduledInstallDays:, getter=scheduledInstallDays) NSArray* scheduledInstallDays;
    @property (nonatomic, setter=setUtcTimeOffsetInMinutes:, getter=utcTimeOffsetInMinutes) int32_t utcTimeOffsetInMinutes;
  
@end
