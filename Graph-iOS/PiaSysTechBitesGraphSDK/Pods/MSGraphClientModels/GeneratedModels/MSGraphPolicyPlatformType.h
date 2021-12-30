// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPolicyPlatformTypeValue){

	MSGraphPolicyPlatformTypeAndroid = 0,
	MSGraphPolicyPlatformTypeIOS = 2,
	MSGraphPolicyPlatformTypeMacOS = 3,
	MSGraphPolicyPlatformTypeWindowsPhone81 = 4,
	MSGraphPolicyPlatformTypeWindows81AndLater = 5,
	MSGraphPolicyPlatformTypeWindows10AndLater = 6,
	MSGraphPolicyPlatformTypeAndroidWorkProfile = 7,
	MSGraphPolicyPlatformTypeAll = 100,
    MSGraphPolicyPlatformTypeEndOfEnum
};

@interface MSGraphPolicyPlatformType : NSObject

+(MSGraphPolicyPlatformType*) android;
+(MSGraphPolicyPlatformType*) iOS;
+(MSGraphPolicyPlatformType*) macOS;
+(MSGraphPolicyPlatformType*) windowsPhone81;
+(MSGraphPolicyPlatformType*) windows81AndLater;
+(MSGraphPolicyPlatformType*) windows10AndLater;
+(MSGraphPolicyPlatformType*) androidWorkProfile;
+(MSGraphPolicyPlatformType*) all;

+(MSGraphPolicyPlatformType*) UnknownEnumValue;

+(MSGraphPolicyPlatformType*) policyPlatformTypeWithEnumValue:(MSGraphPolicyPlatformTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPolicyPlatformTypeValue enumValue;

@end


@interface NSString (MSGraphPolicyPlatformType)

- (MSGraphPolicyPlatformType*) toMSGraphPolicyPlatformType;

@end
