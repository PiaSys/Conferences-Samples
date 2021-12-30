// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedDeviceMobileAppConfiguration()
{
    NSArray* _targetedMobileApps;
    NSDate* _createdDateTime;
    NSString* _managedDeviceMobileAppConfigurationDescription;
    NSDate* _lastModifiedDateTime;
    NSString* _displayName;
    int32_t _version;
    NSArray* _assignments;
    NSArray* _deviceStatuses;
    NSArray* _userStatuses;
    MSGraphManagedDeviceMobileAppConfigurationDeviceSummary* _deviceStatusSummary;
    MSGraphManagedDeviceMobileAppConfigurationUserSummary* _userStatusSummary;
}
@end

@implementation MSGraphManagedDeviceMobileAppConfiguration

- (NSArray*) targetedMobileApps
{
    if([[NSNull null] isEqual:self.dictionary[@"targetedMobileApps"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetedMobileApps"];
}

- (void) setTargetedMobileApps: (NSArray*) val
{
    self.dictionary[@"targetedMobileApps"] = val;
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

- (NSString*) managedDeviceMobileAppConfigurationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setManagedDeviceMobileAppConfigurationDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

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
        for (id tempManagedDeviceMobileAppConfigurationAssignment in assignments){
            [assignmentsResult addObject:tempManagedDeviceMobileAppConfigurationAssignment];
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
        for (id tempManagedDeviceMobileAppConfigurationDeviceStatus in deviceStatuses){
            [deviceStatusesResult addObject:tempManagedDeviceMobileAppConfigurationDeviceStatus];
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
        for (id tempManagedDeviceMobileAppConfigurationUserStatus in userStatuses){
            [userStatusesResult addObject:tempManagedDeviceMobileAppConfigurationUserStatus];
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

- (MSGraphManagedDeviceMobileAppConfigurationDeviceSummary*) deviceStatusSummary
{
    if(!_deviceStatusSummary){
        _deviceStatusSummary = [[MSGraphManagedDeviceMobileAppConfigurationDeviceSummary alloc] initWithDictionary: self.dictionary[@"deviceStatusSummary"]];
    }
    return _deviceStatusSummary;
}

- (void) setDeviceStatusSummary: (MSGraphManagedDeviceMobileAppConfigurationDeviceSummary*) val
{
    _deviceStatusSummary = val;
    self.dictionary[@"deviceStatusSummary"] = val;
}

- (MSGraphManagedDeviceMobileAppConfigurationUserSummary*) userStatusSummary
{
    if(!_userStatusSummary){
        _userStatusSummary = [[MSGraphManagedDeviceMobileAppConfigurationUserSummary alloc] initWithDictionary: self.dictionary[@"userStatusSummary"]];
    }
    return _userStatusSummary;
}

- (void) setUserStatusSummary: (MSGraphManagedDeviceMobileAppConfigurationUserSummary*) val
{
    _userStatusSummary = val;
    self.dictionary[@"userStatusSummary"] = val;
}


@end
