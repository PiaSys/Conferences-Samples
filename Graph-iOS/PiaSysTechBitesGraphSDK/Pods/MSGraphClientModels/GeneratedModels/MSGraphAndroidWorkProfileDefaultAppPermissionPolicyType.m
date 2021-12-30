// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType.h"

@interface MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType () {
    MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue enumValue;
@end

@implementation MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType

+ (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) deviceDefault {
    static MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType alloc] init];
        _deviceDefault.enumValue = MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) prompt {
    static MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType *_prompt;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _prompt = [[MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType alloc] init];
        _prompt.enumValue = MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypePrompt;
    });
    return _prompt;
}
+ (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) autoGrant {
    static MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType *_autoGrant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoGrant = [[MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType alloc] init];
        _autoGrant.enumValue = MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoGrant;
    });
    return _autoGrant;
}
+ (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) autoDeny {
    static MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType *_autoDeny;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoDeny = [[MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType alloc] init];
        _autoDeny.enumValue = MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoDeny;
    });
    return _autoDeny;
}

+ (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) UnknownEnumValue {
    static MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType alloc] init];
        _unknownValue.enumValue = MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) androidWorkProfileDefaultAppPermissionPolicyTypeWithEnumValue:(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue)val {

    switch(val)
    {
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeDeviceDefault:
            return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType deviceDefault];
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypePrompt:
            return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType prompt];
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoGrant:
            return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType autoGrant];
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoDeny:
            return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType autoDeny];
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeEndOfEnum:
        default:
            return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypePrompt:
            return @"prompt";
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoGrant:
            return @"autoGrant";
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoDeny:
            return @"autoDeny";
        case MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType)

- (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) toMSGraphAndroidWorkProfileDefaultAppPermissionPolicyType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType deviceDefault];
    }
    else if([self isEqualToString:@"prompt"])
    {
          return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType prompt];
    }
    else if([self isEqualToString:@"autoGrant"])
    {
          return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType autoGrant];
    }
    else if([self isEqualToString:@"autoDeny"])
    {
          return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType autoDeny];
    }
    else {
        return [MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType UnknownEnumValue];
    }
}

@end
