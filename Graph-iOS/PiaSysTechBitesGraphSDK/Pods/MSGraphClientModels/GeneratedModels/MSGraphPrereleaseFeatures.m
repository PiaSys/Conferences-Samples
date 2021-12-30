// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrereleaseFeatures.h"

@interface MSGraphPrereleaseFeatures () {
    MSGraphPrereleaseFeaturesValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrereleaseFeaturesValue enumValue;
@end

@implementation MSGraphPrereleaseFeatures

+ (MSGraphPrereleaseFeatures*) userDefined {
    static MSGraphPrereleaseFeatures *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphPrereleaseFeatures alloc] init];
        _userDefined.enumValue = MSGraphPrereleaseFeaturesUserDefined;
    });
    return _userDefined;
}
+ (MSGraphPrereleaseFeatures*) settingsOnly {
    static MSGraphPrereleaseFeatures *_settingsOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _settingsOnly = [[MSGraphPrereleaseFeatures alloc] init];
        _settingsOnly.enumValue = MSGraphPrereleaseFeaturesSettingsOnly;
    });
    return _settingsOnly;
}
+ (MSGraphPrereleaseFeatures*) settingsAndExperimentations {
    static MSGraphPrereleaseFeatures *_settingsAndExperimentations;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _settingsAndExperimentations = [[MSGraphPrereleaseFeatures alloc] init];
        _settingsAndExperimentations.enumValue = MSGraphPrereleaseFeaturesSettingsAndExperimentations;
    });
    return _settingsAndExperimentations;
}
+ (MSGraphPrereleaseFeatures*) notAllowed {
    static MSGraphPrereleaseFeatures *_notAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notAllowed = [[MSGraphPrereleaseFeatures alloc] init];
        _notAllowed.enumValue = MSGraphPrereleaseFeaturesNotAllowed;
    });
    return _notAllowed;
}

+ (MSGraphPrereleaseFeatures*) UnknownEnumValue {
    static MSGraphPrereleaseFeatures *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrereleaseFeatures alloc] init];
        _unknownValue.enumValue = MSGraphPrereleaseFeaturesEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrereleaseFeatures*) prereleaseFeaturesWithEnumValue:(MSGraphPrereleaseFeaturesValue)val {

    switch(val)
    {
        case MSGraphPrereleaseFeaturesUserDefined:
            return [MSGraphPrereleaseFeatures userDefined];
        case MSGraphPrereleaseFeaturesSettingsOnly:
            return [MSGraphPrereleaseFeatures settingsOnly];
        case MSGraphPrereleaseFeaturesSettingsAndExperimentations:
            return [MSGraphPrereleaseFeatures settingsAndExperimentations];
        case MSGraphPrereleaseFeaturesNotAllowed:
            return [MSGraphPrereleaseFeatures notAllowed];
        case MSGraphPrereleaseFeaturesEndOfEnum:
        default:
            return [MSGraphPrereleaseFeatures UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrereleaseFeaturesUserDefined:
            return @"userDefined";
        case MSGraphPrereleaseFeaturesSettingsOnly:
            return @"settingsOnly";
        case MSGraphPrereleaseFeaturesSettingsAndExperimentations:
            return @"settingsAndExperimentations";
        case MSGraphPrereleaseFeaturesNotAllowed:
            return @"notAllowed";
        case MSGraphPrereleaseFeaturesEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrereleaseFeaturesValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrereleaseFeatures)

- (MSGraphPrereleaseFeatures*) toMSGraphPrereleaseFeatures{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphPrereleaseFeatures userDefined];
    }
    else if([self isEqualToString:@"settingsOnly"])
    {
          return [MSGraphPrereleaseFeatures settingsOnly];
    }
    else if([self isEqualToString:@"settingsAndExperimentations"])
    {
          return [MSGraphPrereleaseFeatures settingsAndExperimentations];
    }
    else if([self isEqualToString:@"notAllowed"])
    {
          return [MSGraphPrereleaseFeatures notAllowed];
    }
    else {
        return [MSGraphPrereleaseFeatures UnknownEnumValue];
    }
}

@end
