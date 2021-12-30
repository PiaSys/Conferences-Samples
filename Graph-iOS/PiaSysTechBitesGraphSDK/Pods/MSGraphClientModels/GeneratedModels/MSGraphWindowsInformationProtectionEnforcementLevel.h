// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsInformationProtectionEnforcementLevelValue){

	MSGraphWindowsInformationProtectionEnforcementLevelNoProtection = 0,
	MSGraphWindowsInformationProtectionEnforcementLevelEncryptAndAuditOnly = 1,
	MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndPrompt = 2,
	MSGraphWindowsInformationProtectionEnforcementLevelEncryptAuditAndBlock = 3,
    MSGraphWindowsInformationProtectionEnforcementLevelEndOfEnum
};

@interface MSGraphWindowsInformationProtectionEnforcementLevel : NSObject

+(MSGraphWindowsInformationProtectionEnforcementLevel*) noProtection;
+(MSGraphWindowsInformationProtectionEnforcementLevel*) encryptAndAuditOnly;
+(MSGraphWindowsInformationProtectionEnforcementLevel*) encryptAuditAndPrompt;
+(MSGraphWindowsInformationProtectionEnforcementLevel*) encryptAuditAndBlock;

+(MSGraphWindowsInformationProtectionEnforcementLevel*) UnknownEnumValue;

+(MSGraphWindowsInformationProtectionEnforcementLevel*) windowsInformationProtectionEnforcementLevelWithEnumValue:(MSGraphWindowsInformationProtectionEnforcementLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsInformationProtectionEnforcementLevelValue enumValue;

@end


@interface NSString (MSGraphWindowsInformationProtectionEnforcementLevel)

- (MSGraphWindowsInformationProtectionEnforcementLevel*) toMSGraphWindowsInformationProtectionEnforcementLevel;

@end
