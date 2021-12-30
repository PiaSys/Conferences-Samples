// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppFlaggedReason.h"

@interface MSGraphManagedAppFlaggedReason () {
    MSGraphManagedAppFlaggedReasonValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppFlaggedReasonValue enumValue;
@end

@implementation MSGraphManagedAppFlaggedReason

+ (MSGraphManagedAppFlaggedReason*) none {
    static MSGraphManagedAppFlaggedReason *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphManagedAppFlaggedReason alloc] init];
        _none.enumValue = MSGraphManagedAppFlaggedReasonNone;
    });
    return _none;
}
+ (MSGraphManagedAppFlaggedReason*) rootedDevice {
    static MSGraphManagedAppFlaggedReason *_rootedDevice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _rootedDevice = [[MSGraphManagedAppFlaggedReason alloc] init];
        _rootedDevice.enumValue = MSGraphManagedAppFlaggedReasonRootedDevice;
    });
    return _rootedDevice;
}

+ (MSGraphManagedAppFlaggedReason*) UnknownEnumValue {
    static MSGraphManagedAppFlaggedReason *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppFlaggedReason alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppFlaggedReasonEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppFlaggedReason*) managedAppFlaggedReasonWithEnumValue:(MSGraphManagedAppFlaggedReasonValue)val {

    switch(val)
    {
        case MSGraphManagedAppFlaggedReasonNone:
            return [MSGraphManagedAppFlaggedReason none];
        case MSGraphManagedAppFlaggedReasonRootedDevice:
            return [MSGraphManagedAppFlaggedReason rootedDevice];
        case MSGraphManagedAppFlaggedReasonEndOfEnum:
        default:
            return [MSGraphManagedAppFlaggedReason UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppFlaggedReasonNone:
            return @"none";
        case MSGraphManagedAppFlaggedReasonRootedDevice:
            return @"rootedDevice";
        case MSGraphManagedAppFlaggedReasonEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppFlaggedReasonValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppFlaggedReason)

- (MSGraphManagedAppFlaggedReason*) toMSGraphManagedAppFlaggedReason{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphManagedAppFlaggedReason none];
    }
    else if([self isEqualToString:@"rootedDevice"])
    {
          return [MSGraphManagedAppFlaggedReason rootedDevice];
    }
    else {
        return [MSGraphManagedAppFlaggedReason UnknownEnumValue];
    }
}

@end
