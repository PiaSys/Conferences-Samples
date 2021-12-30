// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsInformationProtectionPinCharacterRequirementsValue){

	MSGraphWindowsInformationProtectionPinCharacterRequirementsNotAllow = 0,
	MSGraphWindowsInformationProtectionPinCharacterRequirementsRequireAtLeastOne = 1,
	MSGraphWindowsInformationProtectionPinCharacterRequirementsAllow = 2,
    MSGraphWindowsInformationProtectionPinCharacterRequirementsEndOfEnum
};

@interface MSGraphWindowsInformationProtectionPinCharacterRequirements : NSObject

+(MSGraphWindowsInformationProtectionPinCharacterRequirements*) notAllow;
+(MSGraphWindowsInformationProtectionPinCharacterRequirements*) requireAtLeastOne;
+(MSGraphWindowsInformationProtectionPinCharacterRequirements*) allow;

+(MSGraphWindowsInformationProtectionPinCharacterRequirements*) UnknownEnumValue;

+(MSGraphWindowsInformationProtectionPinCharacterRequirements*) windowsInformationProtectionPinCharacterRequirementsWithEnumValue:(MSGraphWindowsInformationProtectionPinCharacterRequirementsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsInformationProtectionPinCharacterRequirementsValue enumValue;

@end


@interface NSString (MSGraphWindowsInformationProtectionPinCharacterRequirements)

- (MSGraphWindowsInformationProtectionPinCharacterRequirements*) toMSGraphWindowsInformationProtectionPinCharacterRequirements;

@end
