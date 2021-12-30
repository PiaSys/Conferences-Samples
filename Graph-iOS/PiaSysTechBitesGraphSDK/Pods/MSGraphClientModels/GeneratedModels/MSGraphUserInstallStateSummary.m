// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserInstallStateSummary()
{
    NSString* _userName;
    int32_t _installedDeviceCount;
    int32_t _failedDeviceCount;
    int32_t _notInstalledDeviceCount;
    NSArray* _deviceStates;
}
@end

@implementation MSGraphUserInstallStateSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userInstallStateSummary";
    }
    return self;
}
- (NSString*) userName
{
    if([[NSNull null] isEqual:self.dictionary[@"userName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userName"];
}

- (void) setUserName: (NSString*) val
{
    self.dictionary[@"userName"] = val;
}

- (int32_t) installedDeviceCount
{
    _installedDeviceCount = [self.dictionary[@"installedDeviceCount"] intValue];
    return _installedDeviceCount;
}

- (void) setInstalledDeviceCount: (int32_t) val
{
    _installedDeviceCount = val;
    self.dictionary[@"installedDeviceCount"] = @(val);
}

- (int32_t) failedDeviceCount
{
    _failedDeviceCount = [self.dictionary[@"failedDeviceCount"] intValue];
    return _failedDeviceCount;
}

- (void) setFailedDeviceCount: (int32_t) val
{
    _failedDeviceCount = val;
    self.dictionary[@"failedDeviceCount"] = @(val);
}

- (int32_t) notInstalledDeviceCount
{
    _notInstalledDeviceCount = [self.dictionary[@"notInstalledDeviceCount"] intValue];
    return _notInstalledDeviceCount;
}

- (void) setNotInstalledDeviceCount: (int32_t) val
{
    _notInstalledDeviceCount = val;
    self.dictionary[@"notInstalledDeviceCount"] = @(val);
}

- (NSArray*) deviceStates
{
    if(!_deviceStates){
        
    NSMutableArray *deviceStatesResult = [NSMutableArray array];
    NSArray *deviceStates = self.dictionary[@"deviceStates"];

    if ([deviceStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceInstallState in deviceStates){
            [deviceStatesResult addObject:tempDeviceInstallState];
        }
    }

    _deviceStates = deviceStatesResult;
        
    }
    return _deviceStates;
}

- (void) setDeviceStates: (NSArray*) val
{
    _deviceStates = val;
    self.dictionary[@"deviceStates"] = val;
}


@end
