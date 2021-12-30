// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceConfiguration()
{
    NSDate* _lastModifiedDateTime;
    NSDate* _createdDateTime;
    NSString* _deviceConfigurationDescription;
    NSString* _displayName;
    int32_t _version;
    NSArray* _assignments;
    NSArray* _deviceStatuses;
    NSArray* _userStatuses;
    MSGraphDeviceConfigurationDeviceOverview* _deviceStatusOverview;
    MSGraphDeviceConfigurationUserOverview* _userStatusOverview;
    NSArray* _deviceSettingStateSummaries;
}
@end

@implementation MSGraphDeviceConfiguration

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) deviceConfigurationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDeviceConfigurationDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (int32_t) version
{
    _version = [self.dictionary[@"version"] intValue];
    return _version;
}

- (void) setVersion: (int32_t) val
{
    _version = val;
    self.dictionary[@"version"] = @(val);
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempDeviceConfigurationAssignment in assignments){
            [assignmentsResult addObject:tempDeviceConfigurationAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}

- (NSArray*) deviceStatuses
{
    if(!_deviceStatuses){
        
    NSMutableArray *deviceStatusesResult = [NSMutableArray array];
    NSArray *deviceStatuses = self.dictionary[@"deviceStatuses"];

    if ([deviceStatuses isKindOfClass:[NSArray class]]){
        for (id tempDeviceConfigurationDeviceStatus in deviceStatuses){
            [deviceStatusesResult addObject:tempDeviceConfigurationDeviceStatus];
        }
    }

    _deviceStatuses = deviceStatusesResult;
        
    }
    return _deviceStatuses;
}

- (void) setDeviceStatuses: (NSArray*) val
{
    _deviceStatuses = val;
    self.dictionary[@"deviceStatuses"] = val;
}

- (NSArray*) userStatuses
{
    if(!_userStatuses){
        
    NSMutableArray *userStatusesResult = [NSMutableArray array];
    NSArray *userStatuses = self.dictionary[@"userStatuses"];

    if ([userStatuses isKindOfClass:[NSArray class]]){
        for (id tempDeviceConfigurationUserStatus in userStatuses){
            [userStatusesResult addObject:tempDeviceConfigurationUserStatus];
        }
    }

    _userStatuses = userStatusesResult;
        
    }
    return _userStatuses;
}

- (void) setUserStatuses: (NSArray*) val
{
    _userStatuses = val;
    self.dictionary[@"userStatuses"] = val;
}

- (MSGraphDeviceConfigurationDeviceOverview*) deviceStatusOverview
{
    if(!_deviceStatusOverview){
        _deviceStatusOverview = [[MSGraphDeviceConfigurationDeviceOverview alloc] initWithDictionary: self.dictionary[@"deviceStatusOverview"]];
    }
    return _deviceStatusOverview;
}

- (void) setDeviceStatusOverview: (MSGraphDeviceConfigurationDeviceOverview*) val
{
    _deviceStatusOverview = val;
    self.dictionary[@"deviceStatusOverview"] = val;
}

- (MSGraphDeviceConfigurationUserOverview*) userStatusOverview
{
    if(!_userStatusOverview){
        _userStatusOverview = [[MSGraphDeviceConfigurationUserOverview alloc] initWithDictionary: self.dictionary[@"userStatusOverview"]];
    }
    return _userStatusOverview;
}

- (void) setUserStatusOverview: (MSGraphDeviceConfigurationUserOverview*) val
{
    _userStatusOverview = val;
    self.dictionary[@"userStatusOverview"] = val;
}

- (NSArray*) deviceSettingStateSummaries
{
    if(!_deviceSettingStateSummaries){
        
    NSMutableArray *deviceSettingStateSummariesResult = [NSMutableArray array];
    NSArray *deviceSettingStateSummaries = self.dictionary[@"deviceSettingStateSummaries"];

    if ([deviceSettingStateSummaries isKindOfClass:[NSArray class]]){
        for (id tempSettingStateDeviceSummary in deviceSettingStateSummaries){
            [deviceSettingStateSummariesResult addObject:tempSettingStateDeviceSummary];
        }
    }

    _deviceSettingStateSummaries = deviceSettingStateSummariesResult;
        
    }
    return _deviceSettingStateSummaries;
}

- (void) setDeviceSettingStateSummaries: (NSArray*) val
{
    _deviceSettingStateSummaries = val;
    self.dictionary[@"deviceSettingStateSummaries"] = val;
}


@end
