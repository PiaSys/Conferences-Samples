// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceEnrollmentPlatformRestriction()
{
    BOOL _platformBlocked;
    BOOL _personalDeviceEnrollmentBlocked;
    NSString* _osMinimumVersion;
    NSString* _osMaximumVersion;
}
@end

@implementation MSGraphDeviceEnrollmentPlatformRestriction

- (BOOL) platformBlocked
{
    _platformBlocked = [self.dictionary[@"platformBlocked"] boolValue];
    return _platformBlocked;
}

- (void) setPlatformBlocked: (BOOL) val
{
    _platformBlocked = val;
    self.dictionary[@"platformBlocked"] = @(val);
}

- (BOOL) personalDeviceEnrollmentBlocked
{
    _personalDeviceEnrollmentBlocked = [self.dictionary[@"personalDeviceEnrollmentBlocked"] boolValue];
    return _personalDeviceEnrollmentBlocked;
}

- (void) setPersonalDeviceEnrollmentBlocked: (BOOL) val
{
    _personalDeviceEnrollmentBlocked = val;
    self.dictionary[@"personalDeviceEnrollmentBlocked"] = @(val);
}

- (NSString*) osMinimumVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osMinimumVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osMinimumVersion"];
}

- (void) setOsMinimumVersion: (NSString*) val
{
    self.dictionary[@"osMinimumVersion"] = val;
}

- (NSString*) osMaximumVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osMaximumVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osMaximumVersion"];
}

- (void) setOsMaximumVersion: (NSString*) val
{
    self.dictionary[@"osMaximumVersion"] = val;
}

@end
