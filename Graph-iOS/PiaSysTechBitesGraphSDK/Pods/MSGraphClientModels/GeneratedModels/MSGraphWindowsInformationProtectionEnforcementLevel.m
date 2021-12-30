// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsInformationProtectionEnforcementLevel.h"

@interface MSGraphWindowsInformationProtectionEnforcementLevel () {
    MSGraphWindowsInformationProtectionEnforcementLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsInformationProtectionEnforcementLevelValue enumValue;
@end

@implementation MSGraphWindowsInformationProtectionEnforcementLevel

+ (MSGraphWindowsInformationProtectionEnforcementLevel*) noProtection {
    static MSGraphWindowsInformationProtectionEnforcementLevel *_noProtection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noProtection = [[MSGraphWindowsInformationProtectionEnforcementLevel alloc] init];
        _noProtection.enumValue = MSGraphWindowsInformationProtectionEnforcementLevelNoProtection;
    });
    return _noProtection;
}
+ (MSGraphWindowsInformationProtectionEnforcementLevel*) encryptAndAuditOnly {
    static MSGraphWindowsInformationProtectionEnforcementLevel *_encryptAndAuditOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _encryptAndAuditOnly = [[MSGraphWindowsInformationProtectionEnforcementLevel alloc] init];
        _encryptAndAuditOnly.enumValue = MSGraphWindowsInformationProtectionEnforcementLevelEncryptAndAuditOnly;
    });
    return _encryptAndAuditOnly;
}
+ (MSGraphWindowsInformationProtectionEnforcementLevel*) encryptAuditAndPrompt {
    static MSGraphWindowsInformationProtectionEnforcementLevel *_encryptAuditAndPrompt;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _encryptAuditAndPrompt = [[MSGraphWindowsInformationProtectionEnforcementLevel alloc] init];
        _encryptAuditAndPrompt.enumValue = MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndPrompt;
    });
    return _encryptAuditAndPrompt;
}
+ (MSGraphWindowsInformationProtectionEnforcementLevel*) encryptAuditAndBlock {
    static MSGraphWindowsInformationProtectionEnforcementLevel *_encryptAuditAndBlock;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _encryptAuditAndBlock = [[MSGraphWindowsInformationProtectionEnforcementLevel alloc] init];
        _encryptAuditAndBlock.enumValue = MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndBlock;
    });
    return _encryptAuditAndBlock;
}

+ (MSGraphWindowsInformationProtectionEnforcementLevel*) UnknownEnumValue {
    static MSGraphWindowsInformationProtectionEnforcementLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsInformationProtectionEnforcementLevel alloc] init];
        _unknownValue.enumValue = MSGraphWindowsInformationProtectionEnforcementLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsInformationProtectionEnforcementLevel*) windowsInformationProtectionEnforcementLevelWithEnumValue:(MSGraphWindowsInformationProtectionEnforcementLevelValue)val {

    switch(val)
    {
        case MSGraphWindowsInformationProtectionEnforcementLevelNoProtection:
            return [MSGraphWindowsInformationProtectionEnforcementLevel noProtection];
        case MSGraphWindowsInformationProtectionEnforcementLevelEncryptAndAuditOnly:
            return [MSGraphWindowsInformationProtectionEnforcementLevel encryptAndAuditOnly];
        case MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndPrompt:
            return [MSGraphWindowsInformationProtectionEnforcementLevel encryptAuditAndPrompt];
        case MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndBlock:
            return [MSGraphWindowsInformationProtectionEnforcementLevel encryptAuditAndBlock];
        case MSGraphWindowsInformationProtectionEnforcementLevelEndOfEnum:
        default:
            return [MSGraphWindowsInformationProtectionEnforcementLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsInformationProtectionEnforcementLevelNoProtection:
            return @"noProtection";
        case MSGraphWindowsInformationProtectionEnforcementLevelEncryptAndAuditOnly:
            return @"encryptAndAuditOnly";
        case MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndPrompt:
            return @"encryptAuditAndPrompt";
        case MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndBlock:
            return @"encryptAuditAndBlock";
        case MSGraphWindowsInformationProtectionEnforcementLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsInformationProtectionEnforcementLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsInformationProtectionEnforcementLevel)

- (MSGraphWindowsInformationProtectionEnforcementLevel*) toMSGraphWindowsInformationProtectionEnforcementLevel{

    if([self isEqualToString:@"noProtection"])
    {
          return [MSGraphWindowsInformationProtectionEnforcementLevel noProtection];
    }
    else if([self isEqualToString:@"encryptAndAuditOnly"])
    {
          return [MSGraphWindowsInformationProtectionEnforcementLevel encryptAndAuditOnly];
    }
    else if([self isEqualToString:@"encryptAuditAndPrompt"])
    {
          return [MSGraphWindowsInformationProtectionEnforcementLevel encryptAuditAndPrompt];
    }
    else if([self isEqualToString:@"encryptAuditAndBlock"])
    {
          return [MSGraphWindowsInformationProtectionEnforcementLevel encryptAuditAndBlock];
    }
    else {
        return [MSGraphWindowsInformationProtectionEnforcementLevel UnknownEnumValue];
    }
}

@end
