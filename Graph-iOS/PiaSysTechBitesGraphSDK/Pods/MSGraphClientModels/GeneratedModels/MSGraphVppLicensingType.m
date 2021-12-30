// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphVppLicensingType()
{
    BOOL _supportsUserLicensing;
    BOOL _supportsDeviceLicensing;
}
@end

@implementation MSGraphVppLicensingType

- (BOOL) supportsUserLicensing
{
    _supportsUserLicensing = [self.dictionary[@"supportsUserLicensing"] boolValue];
    return _supportsUserLicensing;
}

- (void) setSupportsUserLicensing: (BOOL) val
{
    _supportsUserLicensing = val;
    self.dictionary[@"supportsUserLicensing"] = @(val);
}

- (BOOL) supportsDeviceLicensing
{
    _supportsDeviceLicensing = [self.dictionary[@"supportsDeviceLicensing"] boolValue];
    return _supportsDeviceLicensing;
}

- (void) setSupportsDeviceLicensing: (BOOL) val
{
    _supportsDeviceLicensing = val;
    self.dictionary[@"supportsDeviceLicensing"] = @(val);
}

@end
