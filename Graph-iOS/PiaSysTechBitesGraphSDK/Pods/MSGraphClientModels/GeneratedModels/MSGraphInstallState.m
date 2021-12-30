// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphInstallState.h"

@interface MSGraphInstallState () {
    MSGraphInstallStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphInstallStateValue enumValue;
@end

@implementation MSGraphInstallState

+ (MSGraphInstallState*) notApplicable {
    static MSGraphInstallState *_notApplicable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notApplicable = [[MSGraphInstallState alloc] init];
        _notApplicable.enumValue = MSGraphInstallStateNotApplicable;
    });
    return _notApplicable;
}
+ (MSGraphInstallState*) installed {
    static MSGraphInstallState *_installed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _installed = [[MSGraphInstallState alloc] init];
        _installed.enumValue = MSGraphInstallStateInstalled;
    });
    return _installed;
}
+ (MSGraphInstallState*) failed {
    static MSGraphInstallState *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphInstallState alloc] init];
        _failed.enumValue = MSGraphInstallStateFailed;
    });
    return _failed;
}
+ (MSGraphInstallState*) notInstalled {
    static MSGraphInstallState *_notInstalled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notInstalled = [[MSGraphInstallState alloc] init];
        _notInstalled.enumValue = MSGraphInstallStateNotInstalled;
    });
    return _notInstalled;
}
+ (MSGraphInstallState*) uninstallFailed {
    static MSGraphInstallState *_uninstallFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _uninstallFailed = [[MSGraphInstallState alloc] init];
        _uninstallFailed.enumValue = MSGraphInstallStateUninstallFailed;
    });
    return _uninstallFailed;
}
+ (MSGraphInstallState*) unknown {
    static MSGraphInstallState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphInstallState alloc] init];
        _unknown.enumValue = MSGraphInstallStateUnknown;
    });
    return _unknown;
}

+ (MSGraphInstallState*) UnknownEnumValue {
    static MSGraphInstallState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphInstallState alloc] init];
        _unknownValue.enumValue = MSGraphInstallStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphInstallState*) installStateWithEnumValue:(MSGraphInstallStateValue)val {

    switch(val)
    {
        case MSGraphInstallStateNotApplicable:
            return [MSGraphInstallState notApplicable];
        case MSGraphInstallStateInstalled:
            return [MSGraphInstallState installed];
        case MSGraphInstallStateFailed:
            return [MSGraphInstallState failed];
        case MSGraphInstallStateNotInstalled:
            return [MSGraphInstallState notInstalled];
        case MSGraphInstallStateUninstallFailed:
            return [MSGraphInstallState uninstallFailed];
        case MSGraphInstallStateUnknown:
            return [MSGraphInstallState unknown];
        case MSGraphInstallStateEndOfEnum:
        default:
            return [MSGraphInstallState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphInstallStateNotApplicable:
            return @"notApplicable";
        case MSGraphInstallStateInstalled:
            return @"installed";
        case MSGraphInstallStateFailed:
            return @"failed";
        case MSGraphInstallStateNotInstalled:
            return @"notInstalled";
        case MSGraphInstallStateUninstallFailed:
            return @"uninstallFailed";
        case MSGraphInstallStateUnknown:
            return @"unknown";
        case MSGraphInstallStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphInstallStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphInstallState)

- (MSGraphInstallState*) toMSGraphInstallState{

    if([self isEqualToString:@"notApplicable"])
    {
          return [MSGraphInstallState notApplicable];
    }
    else if([self isEqualToString:@"installed"])
    {
          return [MSGraphInstallState installed];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphInstallState failed];
    }
    else if([self isEqualToString:@"notInstalled"])
    {
          return [MSGraphInstallState notInstalled];
    }
    else if([self isEqualToString:@"uninstallFailed"])
    {
          return [MSGraphInstallState uninstallFailed];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphInstallState unknown];
    }
    else {
        return [MSGraphInstallState UnknownEnumValue];
    }
}

@end
