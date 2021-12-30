// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsInformationProtectionPinCharacterRequirements.h"

@interface MSGraphWindowsInformationProtectionPinCharacterRequirements () {
    MSGraphWindowsInformationProtectionPinCharacterRequirementsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsInformationProtectionPinCharacterRequirementsValue enumValue;
@end

@implementation MSGraphWindowsInformationProtectionPinCharacterRequirements

+ (MSGraphWindowsInformationProtectionPinCharacterRequirements*) notAllow {
    static MSGraphWindowsInformationProtectionPinCharacterRequirements *_notAllow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notAllow = [[MSGraphWindowsInformationProtectionPinCharacterRequirements alloc] init];
        _notAllow.enumValue = MSGraphWindowsInformationProtectionPinCharacterRequirementsNotAllow;
    });
    return _notAllow;
}
+ (MSGraphWindowsInformationProtectionPinCharacterRequirements*) requireAtLeastOne {
    static MSGraphWindowsInformationProtectionPinCharacterRequirements *_requireAtLeastOne;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _requireAtLeastOne = [[MSGraphWindowsInformationProtectionPinCharacterRequirements alloc] init];
        _requireAtLeastOne.enumValue = MSGraphWindowsInformationProtectionPinCharacterRequirementsRequireAtLeastOne;
    });
    return _requireAtLeastOne;
}
+ (MSGraphWindowsInformationProtectionPinCharacterRequirements*) allow {
    static MSGraphWindowsInformationProtectionPinCharacterRequirements *_allow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allow = [[MSGraphWindowsInformationProtectionPinCharacterRequirements alloc] init];
        _allow.enumValue = MSGraphWindowsInformationProtectionPinCharacterRequirementsAllow;
    });
    return _allow;
}

+ (MSGraphWindowsInformationProtectionPinCharacterRequirements*) UnknownEnumValue {
    static MSGraphWindowsInformationProtectionPinCharacterRequirements *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsInformationProtectionPinCharacterRequirements alloc] init];
        _unknownValue.enumValue = MSGraphWindowsInformationProtectionPinCharacterRequirementsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsInformationProtectionPinCharacterRequirements*) windowsInformationProtectionPinCharacterRequirementsWithEnumValue:(MSGraphWindowsInformationProtectionPinCharacterRequirementsValue)val {

    switch(val)
    {
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsNotAllow:
            return [MSGraphWindowsInformationProtectionPinCharacterRequirements notAllow];
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsRequireAtLeastOne:
            return [MSGraphWindowsInformationProtectionPinCharacterRequirements requireAtLeastOne];
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsAllow:
            return [MSGraphWindowsInformationProtectionPinCharacterRequirements allow];
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsEndOfEnum:
        default:
            return [MSGraphWindowsInformationProtectionPinCharacterRequirements UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsNotAllow:
            return @"notAllow";
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsRequireAtLeastOne:
            return @"requireAtLeastOne";
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsAllow:
            return @"allow";
        case MSGraphWindowsInformationProtectionPinCharacterRequirementsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsInformationProtectionPinCharacterRequirementsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsInformationProtectionPinCharacterRequirements)

- (MSGraphWindowsInformationProtectionPinCharacterRequirements*) toMSGraphWindowsInformationProtectionPinCharacterRequirements{

    if([self isEqualToString:@"notAllow"])
    {
          return [MSGraphWindowsInformationProtectionPinCharacterRequirements notAllow];
    }
    else if([self isEqualToString:@"requireAtLeastOne"])
    {
          return [MSGraphWindowsInformationProtectionPinCharacterRequirements requireAtLeastOne];
    }
    else if([self isEqualToString:@"allow"])
    {
          return [MSGraphWindowsInformationProtectionPinCharacterRequirements allow];
    }
    else {
        return [MSGraphWindowsInformationProtectionPinCharacterRequirements UnknownEnumValue];
    }
}

@end
