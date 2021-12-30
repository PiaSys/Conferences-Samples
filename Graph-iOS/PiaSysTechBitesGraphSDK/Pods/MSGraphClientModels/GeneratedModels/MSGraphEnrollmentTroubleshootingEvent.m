// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEnrollmentTroubleshootingEvent()
{
    NSString* _managedDeviceIdentifier;
    NSString* _operatingSystem;
    NSString* _osVersion;
    NSString* _userId;
    NSString* _deviceId;
    MSGraphDeviceEnrollmentType* _enrollmentType;
    MSGraphDeviceEnrollmentFailureReason* _failureCategory;
    NSString* _failureReason;
}
@end

@implementation MSGraphEnrollmentTroubleshootingEvent

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.enrollmentTroubleshootingEvent";
    }
    return self;
}
- (NSString*) managedDeviceIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"managedDeviceIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"managedDeviceIdentifier"];
}

- (void) setManagedDeviceIdentifier: (NSString*) val
{
    self.dictionary[@"managedDeviceIdentifier"] = val;
}

- (NSString*) operatingSystem
{
    if([[NSNull null] isEqual:self.dictionary[@"operatingSystem"]])
    {
        return nil;
    }   
    return self.dictionary[@"operatingSystem"];
}

- (void) setOperatingSystem: (NSString*) val
{
    self.dictionary[@"operatingSystem"] = val;
}

- (NSString*) osVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osVersion"];
}

- (void) setOsVersion: (NSString*) val
{
    self.dictionary[@"osVersion"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) deviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceId"];
}

- (void) setDeviceId: (NSString*) val
{
    self.dictionary[@"deviceId"] = val;
}

- (MSGraphDeviceEnrollmentType*) enrollmentType
{
    if(!_enrollmentType){
        _enrollmentType = [self.dictionary[@"enrollmentType"] toMSGraphDeviceEnrollmentType];
    }
    return _enrollmentType;
}

- (void) setEnrollmentType: (MSGraphDeviceEnrollmentType*) val
{
    _enrollmentType = val;
    self.dictionary[@"enrollmentType"] = val;
}

- (MSGraphDeviceEnrollmentFailureReason*) failureCategory
{
    if(!_failureCategory){
        _failureCategory = [self.dictionary[@"failureCategory"] toMSGraphDeviceEnrollmentFailureReason];
    }
    return _failureCategory;
}

- (void) setFailureCategory: (MSGraphDeviceEnrollmentFailureReason*) val
{
    _failureCategory = val;
    self.dictionary[@"failureCategory"] = val;
}

- (NSString*) failureReason
{
    if([[NSNull null] isEqual:self.dictionary[@"failureReason"]])
    {
        return nil;
    }   
    return self.dictionary[@"failureReason"];
}

- (void) setFailureReason: (NSString*) val
{
    self.dictionary[@"failureReason"] = val;
}


@end
