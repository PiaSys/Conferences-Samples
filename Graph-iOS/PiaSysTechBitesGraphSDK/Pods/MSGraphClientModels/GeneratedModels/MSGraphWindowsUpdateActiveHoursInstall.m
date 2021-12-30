// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsUpdateActiveHoursInstall()
{
    MSTimeOfDay* _activeHoursStart;
    MSTimeOfDay* _activeHoursEnd;
}
@end

@implementation MSGraphWindowsUpdateActiveHoursInstall

- (MSTimeOfDay*) activeHoursStart
{
    if(!_activeHoursStart){
        _activeHoursStart = [MSTimeOfDay ms_timeFromString: self.dictionary[@"activeHoursStart"]];
    }
    return _activeHoursStart;
}

- (void) setActiveHoursStart: (MSTimeOfDay*) val
{
    _activeHoursStart = val;
    self.dictionary[@"activeHoursStart"] = [val ms_toString];
}

- (MSTimeOfDay*) activeHoursEnd
{
    if(!_activeHoursEnd){
        _activeHoursEnd = [MSTimeOfDay ms_timeFromString: self.dictionary[@"activeHoursEnd"]];
    }
    return _activeHoursEnd;
}

- (void) setActiveHoursEnd: (MSTimeOfDay*) val
{
    _activeHoursEnd = val;
    self.dictionary[@"activeHoursEnd"] = [val ms_toString];
}

@end
