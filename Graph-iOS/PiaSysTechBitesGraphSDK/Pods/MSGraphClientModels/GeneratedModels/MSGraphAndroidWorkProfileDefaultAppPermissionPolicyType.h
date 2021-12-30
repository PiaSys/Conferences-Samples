// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue){

	MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeDeviceDefault = 0,
	MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypePrompt = 1,
	MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoGrant = 2,
	MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeAutoDeny = 3,
    MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeEndOfEnum
};

@interface MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType : NSObject

+(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) deviceDefault;
+(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) prompt;
+(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) autoGrant;
+(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) autoDeny;

+(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) UnknownEnumValue;

+(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) androidWorkProfileDefaultAppPermissionPolicyTypeWithEnumValue:(MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAndroidWorkProfileDefaultAppPermissionPolicyTypeValue enumValue;

@end


@interface NSString (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType)

- (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) toMSGraphAndroidWorkProfileDefaultAppPermissionPolicyType;

@end
