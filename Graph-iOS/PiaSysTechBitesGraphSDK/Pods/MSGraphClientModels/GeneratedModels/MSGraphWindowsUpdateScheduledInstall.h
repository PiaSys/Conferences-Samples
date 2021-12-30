// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSTimeOfDay; 
#import "MSGraphWeeklySchedule.h"


#import "MSGraphWindowsUpdateInstallScheduleType.h"

@interface MSGraphWindowsUpdateScheduledInstall : MSGraphWindowsUpdateInstallScheduleType

@property (nonnull, nonatomic, setter=setScheduledInstallDay:, getter=scheduledInstallDay) MSGraphWeeklySchedule* scheduledInstallDay;
@property (nonnull, nonatomic, setter=setScheduledInstallTime:, getter=scheduledInstallTime) MSTimeOfDay* scheduledInstallTime;

@end
