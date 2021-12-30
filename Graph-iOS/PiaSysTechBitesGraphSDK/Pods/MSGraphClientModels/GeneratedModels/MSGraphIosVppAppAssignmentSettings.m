// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosVppAppAssignmentSettings()
{
    BOOL _useDeviceLicensing;
    NSString* _vpnConfigurationId;
}
@end

@implementation MSGraphIosVppAppAssignmentSettings

- (BOOL) useDeviceLicensing
{
    _useDeviceLicensing = [self.dictionary[@"useDeviceLicensing"] boolValue];
    return _useDeviceLicensing;
}

- (void) setUseDeviceLicensing: (BOOL) val
{
    _useDeviceLicensing = val;
    self.dictionary[@"useDeviceLicensing"] = @(val);
}

- (NSString*) vpnConfigurationId
{
    if([[NSNull null] isEqual:self.dictionary[@"vpnConfigurationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"vpnConfigurationId"];
}

- (void) setVpnConfigurationId: (NSString*) val
{
    self.dictionary[@"vpnConfigurationId"] = val;
}

@end
