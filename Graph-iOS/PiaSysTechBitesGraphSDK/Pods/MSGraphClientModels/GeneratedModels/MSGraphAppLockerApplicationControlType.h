// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAppLockerApplicationControlTypeValue){

	MSGraphAppLockerApplicationControlTypeNotConfigured = 0,
	MSGraphAppLockerApplicationControlTypeEnforceComponentsAndStoreApps = 1,
	MSGraphAppLockerApplicationControlTypeAuditComponentsAndStoreApps = 2,
	MSGraphAppLockerApplicationControlTypeEnforceComponentsStoreAppsAndSmartlocker = 3,
	MSGraphAppLockerApplicationControlTypeAuditComponentsStoreAppsAndSmartlocker = 4,
    MSGraphAppLockerApplicationControlTypeEndOfEnum
};

@interface MSGraphAppLockerApplicationControlType : NSObject

+(MSGraphAppLockerApplicationControlType*) notConfigured;
+(MSGraphAppLockerApplicationControlType*) enforceComponentsAndStoreApps;
+(MSGraphAppLockerApplicationControlType*) auditComponentsAndStoreApps;
+(MSGraphAppLockerApplicationControlType*) enforceComponentsStoreAppsAndSmartlocker;
+(MSGraphAppLockerApplicationControlType*) auditComponentsStoreAppsAndSmartlocker;

+(MSGraphAppLockerApplicationControlType*) UnknownEnumValue;

+(MSGraphAppLockerApplicationControlType*) appLockerApplicationControlTypeWithEnumValue:(MSGraphAppLockerApplicationControlTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAppLockerApplicationControlTypeValue enumValue;

@end


@interface NSString (MSGraphAppLockerApplicationControlType)

- (MSGraphAppLockerApplicationControlType*) toMSGraphAppLockerApplicationControlType;

@end
