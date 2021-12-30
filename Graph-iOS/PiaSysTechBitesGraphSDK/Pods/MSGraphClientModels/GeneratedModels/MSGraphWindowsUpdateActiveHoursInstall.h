// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSTimeOfDay; 


#import "MSGraphWindowsUpdateInstallScheduleType.h"

@interface MSGraphWindowsUpdateActiveHoursInstall : MSGraphWindowsUpdateInstallScheduleType

@property (nonnull, nonatomic, setter=setActiveHoursStart:, getter=activeHoursStart) MSTimeOfDay* activeHoursStart;
@property (nonnull, nonatomic, setter=setActiveHoursEnd:, getter=activeHoursEnd) MSTimeOfDay* activeHoursEnd;

@end
