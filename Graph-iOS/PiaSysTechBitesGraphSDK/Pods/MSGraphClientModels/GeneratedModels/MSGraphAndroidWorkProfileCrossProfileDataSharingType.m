// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAndroidWorkProfileCrossProfileDataSharingType.h"

@interface MSGraphAndroidWorkProfileCrossProfileDataSharingType () {
    MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue enumValue;
@end

@implementation MSGraphAndroidWorkProfileCrossProfileDataSharingType

+ (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) deviceDefault {
    static MSGraphAndroidWorkProfileCrossProfileDataSharingType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphAndroidWorkProfileCrossProfileDataSharingType alloc] init];
        _deviceDefault.enumValue = MSGraphAndroidWorkProfileCrossProfileDataSharingTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) preventAny {
    static MSGraphAndroidWorkProfileCrossProfileDataSharingType *_preventAny;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preventAny = [[MSGraphAndroidWorkProfileCrossProfileDataSharingType alloc] init];
        _preventAny.enumValue = MSGraphAndroidWorkProfileCrossProfileDataSharingTypePreventAny;
    });
    return _preventAny;
}
+ (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) allowPersonalToWork {
    static MSGraphAndroidWorkProfileCrossProfileDataSharingType *_allowPersonalToWork;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowPersonalToWork = [[MSGraphAndroidWorkProfileCrossProfileDataSharingType alloc] init];
        _allowPersonalToWork.enumValue = MSGraphAndroidWorkProfileCrossProfileDataSharingTypeAllowPersonalToWork;
    });
    return _allowPersonalToWork;
}
+ (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) noRestrictions {
    static MSGraphAndroidWorkProfileCrossProfileDataSharingType *_noRestrictions;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noRestrictions = [[MSGraphAndroidWorkProfileCrossProfileDataSharingType alloc] init];
        _noRestrictions.enumValue = MSGraphAndroidWorkProfileCrossProfileDataSharingTypeNoRestrictions;
    });
    return _noRestrictions;
}

+ (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) UnknownEnumValue {
    static MSGraphAndroidWorkProfileCrossProfileDataSharingType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAndroidWorkProfileCrossProfileDataSharingType alloc] init];
        _unknownValue.enumValue = MSGraphAndroidWorkProfileCrossProfileDataSharingTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) androidWorkProfileCrossProfileDataSharingTypeWithEnumValue:(MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue)val {

    switch(val)
    {
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeDeviceDefault:
            return [MSGraphAndroidWorkProfileCrossProfileDataSharingType deviceDefault];
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypePreventAny:
            return [MSGraphAndroidWorkProfileCrossProfileDataSharingType preventAny];
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeAllowPersonalToWork:
            return [MSGraphAndroidWorkProfileCrossProfileDataSharingType allowPersonalToWork];
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeNoRestrictions:
            return [MSGraphAndroidWorkProfileCrossProfileDataSharingType noRestrictions];
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeEndOfEnum:
        default:
            return [MSGraphAndroidWorkProfileCrossProfileDataSharingType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypePreventAny:
            return @"preventAny";
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeAllowPersonalToWork:
            return @"allowPersonalToWork";
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeNoRestrictions:
            return @"noRestrictions";
        case MSGraphAndroidWorkProfileCrossProfileDataSharingTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAndroidWorkProfileCrossProfileDataSharingType)

- (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) toMSGraphAndroidWorkProfileCrossProfileDataSharingType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphAndroidWorkProfileCrossProfileDataSharingType deviceDefault];
    }
    else if([self isEqualToString:@"preventAny"])
    {
          return [MSGraphAndroidWorkProfileCrossProfileDataSharingType preventAny];
    }
    else if([self isEqualToString:@"allowPersonalToWork"])
    {
          return [MSGraphAndroidWorkProfileCrossProfileDataSharingType allowPersonalToWork];
    }
    else if([self isEqualToString:@"noRestrictions"])
    {
          return [MSGraphAndroidWorkProfileCrossProfileDataSharingType noRestrictions];
    }
    else {
        return [MSGraphAndroidWorkProfileCrossProfileDataSharingType UnknownEnumValue];
    }
}

@end
