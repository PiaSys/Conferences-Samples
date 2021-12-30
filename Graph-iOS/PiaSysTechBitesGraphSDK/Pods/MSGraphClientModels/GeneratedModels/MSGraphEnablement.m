// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEnablement.h"

@interface MSGraphEnablement () {
    MSGraphEnablementValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEnablementValue enumValue;
@end

@implementation MSGraphEnablement

+ (MSGraphEnablement*) notConfigured {
    static MSGraphEnablement *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphEnablement alloc] init];
        _notConfigured.enumValue = MSGraphEnablementNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphEnablement*) enabled {
    static MSGraphEnablement *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphEnablement alloc] init];
        _enabled.enumValue = MSGraphEnablementEnabled;
    });
    return _enabled;
}
+ (MSGraphEnablement*) disabled {
    static MSGraphEnablement *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphEnablement alloc] init];
        _disabled.enumValue = MSGraphEnablementDisabled;
    });
    return _disabled;
}

+ (MSGraphEnablement*) UnknownEnumValue {
    static MSGraphEnablement *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEnablement alloc] init];
        _unknownValue.enumValue = MSGraphEnablementEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEnablement*) enablementWithEnumValue:(MSGraphEnablementValue)val {

    switch(val)
    {
        case MSGraphEnablementNotConfigured:
            return [MSGraphEnablement notConfigured];
        case MSGraphEnablementEnabled:
            return [MSGraphEnablement enabled];
        case MSGraphEnablementDisabled:
            return [MSGraphEnablement disabled];
        case MSGraphEnablementEndOfEnum:
        default:
            return [MSGraphEnablement UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEnablementNotConfigured:
            return @"notConfigured";
        case MSGraphEnablementEnabled:
            return @"enabled";
        case MSGraphEnablementDisabled:
            return @"disabled";
        case MSGraphEnablementEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEnablementValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEnablement)

- (MSGraphEnablement*) toMSGraphEnablement{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphEnablement notConfigured];
    }
    else if([self isEqualToString:@"enabled"])
    {
          return [MSGraphEnablement enabled];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphEnablement disabled];
    }
    else {
        return [MSGraphEnablement UnknownEnumValue];
    }
}

@end
