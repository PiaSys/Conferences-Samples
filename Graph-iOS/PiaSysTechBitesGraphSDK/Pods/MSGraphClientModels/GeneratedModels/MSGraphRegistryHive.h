// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRegistryHiveValue){

	MSGraphRegistryHiveUnknown = 0,
	MSGraphRegistryHiveCurrentConfig = 1,
	MSGraphRegistryHiveCurrentUser = 2,
	MSGraphRegistryHiveLocalMachineSam = 3,
	MSGraphRegistryHiveLocalMachineSecurity = 4,
	MSGraphRegistryHiveLocalMachineSoftware = 5,
	MSGraphRegistryHiveLocalMachineSystem = 6,
	MSGraphRegistryHiveUsersDefault = 7,
	MSGraphRegistryHiveUnknownFutureValue = 127,
    MSGraphRegistryHiveEndOfEnum
};

@interface MSGraphRegistryHive : NSObject

+(MSGraphRegistryHive*) unknown;
+(MSGraphRegistryHive*) currentConfig;
+(MSGraphRegistryHive*) currentUser;
+(MSGraphRegistryHive*) localMachineSam;
+(MSGraphRegistryHive*) localMachineSecurity;
+(MSGraphRegistryHive*) localMachineSoftware;
+(MSGraphRegistryHive*) localMachineSystem;
+(MSGraphRegistryHive*) usersDefault;
+(MSGraphRegistryHive*) unknownFutureValue;

+(MSGraphRegistryHive*) UnknownEnumValue;

+(MSGraphRegistryHive*) registryHiveWithEnumValue:(MSGraphRegistryHiveValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRegistryHiveValue enumValue;

@end


@interface NSString (MSGraphRegistryHive)

- (MSGraphRegistryHive*) toMSGraphRegistryHive;

@end
