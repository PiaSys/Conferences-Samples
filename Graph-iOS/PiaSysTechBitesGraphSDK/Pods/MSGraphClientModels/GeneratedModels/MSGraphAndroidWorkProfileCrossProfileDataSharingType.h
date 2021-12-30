// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue){

	MSGraphAndroidWorkProfileCrossProfileDataSharingTypeDeviceDefault = 0,
	MSGraphAndroidWorkProfileCrossProfileDataSharingTypePreventAny = 1,
	MSGraphAndroidWorkProfileCrossProfileDataSharingTypeAllowPersonalToWork = 2,
	MSGraphAndroidWorkProfileCrossProfileDataSharingTypeNoRestrictions = 3,
    MSGraphAndroidWorkProfileCrossProfileDataSharingTypeEndOfEnum
};

@interface MSGraphAndroidWorkProfileCrossProfileDataSharingType : NSObject

+(MSGraphAndroidWorkProfileCrossProfileDataSharingType*) deviceDefault;
+(MSGraphAndroidWorkProfileCrossProfileDataSharingType*) preventAny;
+(MSGraphAndroidWorkProfileCrossProfileDataSharingType*) allowPersonalToWork;
+(MSGraphAndroidWorkProfileCrossProfileDataSharingType*) noRestrictions;

+(MSGraphAndroidWorkProfileCrossProfileDataSharingType*) UnknownEnumValue;

+(MSGraphAndroidWorkProfileCrossProfileDataSharingType*) androidWorkProfileCrossProfileDataSharingTypeWithEnumValue:(MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAndroidWorkProfileCrossProfileDataSharingTypeValue enumValue;

@end


@interface NSString (MSGraphAndroidWorkProfileCrossProfileDataSharingType)

- (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) toMSGraphAndroidWorkProfileCrossProfileDataSharingType;

@end
