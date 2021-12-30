// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsUpdateScheduledInstall()
{
    MSGraphWeeklySchedule* _scheduledInstallDay;
    MSTimeOfDay* _scheduledInstallTime;
}
@end

@implementation MSGraphWindowsUpdateScheduledInstall

- (MSGraphWeeklySchedule*) scheduledInstallDay
{
    if(!_scheduledInstallDay){
        _scheduledInstallDay = [self.dictionary[@"scheduledInstallDay"] toMSGraphWeeklySchedule];
    }
    return _scheduledInstallDay;
}

- (void) setScheduledInstallDay: (MSGraphWeeklySchedule*) val
{
    _scheduledInstallDay = val;
    self.dictionary[@"scheduledInstallDay"] = val;
}

- (MSTimeOfDay*) scheduledInstallTime
{
    if(!_scheduledInstallTime){
        _scheduledInstallTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"scheduledInstallTime"]];
    }
    return _scheduledInstallTime;
}

- (void) setScheduledInstallTime: (MSTimeOfDay*) val
{
    _scheduledInstallTime = val;
    self.dictionary[@"scheduledInstallTime"] = [val ms_toString];
}

@end
