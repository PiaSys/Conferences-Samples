// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphComplianceState.h"

@interface MSGraphComplianceState () {
    MSGraphComplianceStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphComplianceStateValue enumValue;
@end

@implementation MSGraphComplianceState

+ (MSGraphComplianceState*) unknown {
    static MSGraphComplianceState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphComplianceState alloc] init];
        _unknown.enumValue = MSGraphComplianceStateUnknown;
    });
    return _unknown;
}
+ (MSGraphComplianceState*) compliant {
    static MSGraphComplianceState *_compliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compliant = [[MSGraphComplianceState alloc] init];
        _compliant.enumValue = MSGraphComplianceStateCompliant;
    });
    return _compliant;
}
+ (MSGraphComplianceState*) noncompliant {
    static MSGraphComplianceState *_noncompliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noncompliant = [[MSGraphComplianceState alloc] init];
        _noncompliant.enumValue = MSGraphComplianceStateNoncompliant;
    });
    return _noncompliant;
}
+ (MSGraphComplianceState*) conflict {
    static MSGraphComplianceState *_conflict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _conflict = [[MSGraphComplianceState alloc] init];
        _conflict.enumValue = MSGraphComplianceStateConflict;
    });
    return _conflict;
}
+ (MSGraphComplianceState*) error {
    static MSGraphComplianceState *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphComplianceState alloc] init];
        _error.enumValue = MSGraphComplianceStateError;
    });
    return _error;
}
+ (MSGraphComplianceState*) inGracePeriod {
    static MSGraphComplianceState *_inGracePeriod;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inGracePeriod = [[MSGraphComplianceState alloc] init];
        _inGracePeriod.enumValue = MSGraphComplianceStateInGracePeriod;
    });
    return _inGracePeriod;
}
+ (MSGraphComplianceState*) configManager {
    static MSGraphComplianceState *_configManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _configManager = [[MSGraphComplianceState alloc] init];
        _configManager.enumValue = MSGraphComplianceStateConfigManager;
    });
    return _configManager;
}

+ (MSGraphComplianceState*) UnknownEnumValue {
    static MSGraphComplianceState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphComplianceState alloc] init];
        _unknownValue.enumValue = MSGraphComplianceStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphComplianceState*) complianceStateWithEnumValue:(MSGraphComplianceStateValue)val {

    switch(val)
    {
        case MSGraphComplianceStateUnknown:
            return [MSGraphComplianceState unknown];
        case MSGraphComplianceStateCompliant:
            return [MSGraphComplianceState compliant];
        case MSGraphComplianceStateNoncompliant:
            return [MSGraphComplianceState noncompliant];
        case MSGraphComplianceStateConflict:
            return [MSGraphComplianceState conflict];
        case MSGraphComplianceStateError:
            return [MSGraphComplianceState error];
        case MSGraphComplianceStateInGracePeriod:
            return [MSGraphComplianceState inGracePeriod];
        case MSGraphComplianceStateConfigManager:
            return [MSGraphComplianceState configManager];
        case MSGraphComplianceStateEndOfEnum:
        default:
            return [MSGraphComplianceState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphComplianceStateUnknown:
            return @"unknown";
        case MSGraphComplianceStateCompliant:
            return @"compliant";
        case MSGraphComplianceStateNoncompliant:
            return @"noncompliant";
        case MSGraphComplianceStateConflict:
            return @"conflict";
        case MSGraphComplianceStateError:
            return @"error";
        case MSGraphComplianceStateInGracePeriod:
            return @"inGracePeriod";
        case MSGraphComplianceStateConfigManager:
            return @"configManager";
        case MSGraphComplianceStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphComplianceStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphComplianceState)

- (MSGraphComplianceState*) toMSGraphComplianceState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphComplianceState unknown];
    }
    else if([self isEqualToString:@"compliant"])
    {
          return [MSGraphComplianceState compliant];
    }
    else if([self isEqualToString:@"noncompliant"])
    {
          return [MSGraphComplianceState noncompliant];
    }
    else if([self isEqualToString:@"conflict"])
    {
          return [MSGraphComplianceState conflict];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphComplianceState error];
    }
    else if([self isEqualToString:@"inGracePeriod"])
    {
          return [MSGraphComplianceState inGracePeriod];
    }
    else if([self isEqualToString:@"configManager"])
    {
          return [MSGraphComplianceState configManager];
    }
    else {
        return [MSGraphComplianceState UnknownEnumValue];
    }
}

@end
