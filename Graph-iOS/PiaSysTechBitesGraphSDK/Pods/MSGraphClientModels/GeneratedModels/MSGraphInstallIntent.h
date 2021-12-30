// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphInstallIntentValue){

	MSGraphInstallIntentAvailable = 0,
	MSGraphInstallIntentRequired = 1,
	MSGraphInstallIntentUninstall = 2,
	MSGraphInstallIntentAvailableWithoutEnrollment = 3,
    MSGraphInstallIntentEndOfEnum
};

@interface MSGraphInstallIntent : NSObject

+(MSGraphInstallIntent*) available;
+(MSGraphInstallIntent*) required;
+(MSGraphInstallIntent*) uninstall;
+(MSGraphInstallIntent*) availableWithoutEnrollment;

+(MSGraphInstallIntent*) UnknownEnumValue;

+(MSGraphInstallIntent*) installIntentWithEnumValue:(MSGraphInstallIntentValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphInstallIntentValue enumValue;

@end


@interface NSString (MSGraphInstallIntent)

- (MSGraphInstallIntent*) toMSGraphInstallIntent;

@end
