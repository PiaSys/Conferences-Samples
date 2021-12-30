// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPrereleaseFeaturesValue){

	MSGraphPrereleaseFeaturesUserDefined = 0,
	MSGraphPrereleaseFeaturesSettingsOnly = 1,
	MSGraphPrereleaseFeaturesSettingsAndExperimentations = 2,
	MSGraphPrereleaseFeaturesNotAllowed = 3,
    MSGraphPrereleaseFeaturesEndOfEnum
};

@interface MSGraphPrereleaseFeatures : NSObject

+(MSGraphPrereleaseFeatures*) userDefined;
+(MSGraphPrereleaseFeatures*) settingsOnly;
+(MSGraphPrereleaseFeatures*) settingsAndExperimentations;
+(MSGraphPrereleaseFeatures*) notAllowed;

+(MSGraphPrereleaseFeatures*) UnknownEnumValue;

+(MSGraphPrereleaseFeatures*) prereleaseFeaturesWithEnumValue:(MSGraphPrereleaseFeaturesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPrereleaseFeaturesValue enumValue;

@end


@interface NSString (MSGraphPrereleaseFeatures)

- (MSGraphPrereleaseFeatures*) toMSGraphPrereleaseFeatures;

@end
