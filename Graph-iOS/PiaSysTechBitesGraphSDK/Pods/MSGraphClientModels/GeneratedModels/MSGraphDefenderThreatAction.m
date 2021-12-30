// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDefenderThreatAction.h"

@interface MSGraphDefenderThreatAction () {
    MSGraphDefenderThreatActionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDefenderThreatActionValue enumValue;
@end

@implementation MSGraphDefenderThreatAction

+ (MSGraphDefenderThreatAction*) deviceDefault {
    static MSGraphDefenderThreatAction *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphDefenderThreatAction alloc] init];
        _deviceDefault.enumValue = MSGraphDefenderThreatActionDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphDefenderThreatAction*) clean {
    static MSGraphDefenderThreatAction *_clean;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clean = [[MSGraphDefenderThreatAction alloc] init];
        _clean.enumValue = MSGraphDefenderThreatActionClean;
    });
    return _clean;
}
+ (MSGraphDefenderThreatAction*) quarantine {
    static MSGraphDefenderThreatAction *_quarantine;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _quarantine = [[MSGraphDefenderThreatAction alloc] init];
        _quarantine.enumValue = MSGraphDefenderThreatActionQuarantine;
    });
    return _quarantine;
}
+ (MSGraphDefenderThreatAction*) remove {
    static MSGraphDefenderThreatAction *_remove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _remove = [[MSGraphDefenderThreatAction alloc] init];
        _remove.enumValue = MSGraphDefenderThreatActionRemove;
    });
    return _remove;
}
+ (MSGraphDefenderThreatAction*) allow {
    static MSGraphDefenderThreatAction *_allow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allow = [[MSGraphDefenderThreatAction alloc] init];
        _allow.enumValue = MSGraphDefenderThreatActionAllow;
    });
    return _allow;
}
+ (MSGraphDefenderThreatAction*) userDefined {
    static MSGraphDefenderThreatAction *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphDefenderThreatAction alloc] init];
        _userDefined.enumValue = MSGraphDefenderThreatActionUserDefined;
    });
    return _userDefined;
}
+ (MSGraphDefenderThreatAction*) block {
    static MSGraphDefenderThreatAction *_block;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _block = [[MSGraphDefenderThreatAction alloc] init];
        _block.enumValue = MSGraphDefenderThreatActionBlock;
    });
    return _block;
}

+ (MSGraphDefenderThreatAction*) UnknownEnumValue {
    static MSGraphDefenderThreatAction *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDefenderThreatAction alloc] init];
        _unknownValue.enumValue = MSGraphDefenderThreatActionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDefenderThreatAction*) defenderThreatActionWithEnumValue:(MSGraphDefenderThreatActionValue)val {

    switch(val)
    {
        case MSGraphDefenderThreatActionDeviceDefault:
            return [MSGraphDefenderThreatAction deviceDefault];
        case MSGraphDefenderThreatActionClean:
            return [MSGraphDefenderThreatAction clean];
        case MSGraphDefenderThreatActionQuarantine:
            return [MSGraphDefenderThreatAction quarantine];
        case MSGraphDefenderThreatActionRemove:
            return [MSGraphDefenderThreatAction remove];
        case MSGraphDefenderThreatActionAllow:
            return [MSGraphDefenderThreatAction allow];
        case MSGraphDefenderThreatActionUserDefined:
            return [MSGraphDefenderThreatAction userDefined];
        case MSGraphDefenderThreatActionBlock:
            return [MSGraphDefenderThreatAction block];
        case MSGraphDefenderThreatActionEndOfEnum:
        default:
            return [MSGraphDefenderThreatAction UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDefenderThreatActionDeviceDefault:
            return @"deviceDefault";
        case MSGraphDefenderThreatActionClean:
            return @"clean";
        case MSGraphDefenderThreatActionQuarantine:
            return @"quarantine";
        case MSGraphDefenderThreatActionRemove:
            return @"remove";
        case MSGraphDefenderThreatActionAllow:
            return @"allow";
        case MSGraphDefenderThreatActionUserDefined:
            return @"userDefined";
        case MSGraphDefenderThreatActionBlock:
            return @"block";
        case MSGraphDefenderThreatActionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDefenderThreatActionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDefenderThreatAction)

- (MSGraphDefenderThreatAction*) toMSGraphDefenderThreatAction{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphDefenderThreatAction deviceDefault];
    }
    else if([self isEqualToString:@"clean"])
    {
          return [MSGraphDefenderThreatAction clean];
    }
    else if([self isEqualToString:@"quarantine"])
    {
          return [MSGraphDefenderThreatAction quarantine];
    }
    else if([self isEqualToString:@"remove"])
    {
          return [MSGraphDefenderThreatAction remove];
    }
    else if([self isEqualToString:@"allow"])
    {
          return [MSGraphDefenderThreatAction allow];
    }
    else if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphDefenderThreatAction userDefined];
    }
    else if([self isEqualToString:@"block"])
    {
          return [MSGraphDefenderThreatAction block];
    }
    else {
        return [MSGraphDefenderThreatAction UnknownEnumValue];
    }
}

@end
