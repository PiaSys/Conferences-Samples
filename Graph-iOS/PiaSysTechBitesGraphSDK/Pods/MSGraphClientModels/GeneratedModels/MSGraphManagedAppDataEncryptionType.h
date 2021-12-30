// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppDataEncryptionTypeValue){

	MSGraphManagedAppDataEncryptionTypeUseDeviceSettings = 0,
	MSGraphManagedAppDataEncryptionTypeAfterDeviceRestart = 1,
	MSGraphManagedAppDataEncryptionTypeWhenDeviceLockedExceptOpenFiles = 2,
	MSGraphManagedAppDataEncryptionTypeWhenDeviceLocked = 3,
    MSGraphManagedAppDataEncryptionTypeEndOfEnum
};

@interface MSGraphManagedAppDataEncryptionType : NSObject

+(MSGraphManagedAppDataEncryptionType*) useDeviceSettings;
+(MSGraphManagedAppDataEncryptionType*) afterDeviceRestart;
+(MSGraphManagedAppDataEncryptionType*) whenDeviceLockedExceptOpenFiles;
+(MSGraphManagedAppDataEncryptionType*) whenDeviceLocked;

+(MSGraphManagedAppDataEncryptionType*) UnknownEnumValue;

+(MSGraphManagedAppDataEncryptionType*) managedAppDataEncryptionTypeWithEnumValue:(MSGraphManagedAppDataEncryptionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppDataEncryptionTypeValue enumValue;

@end


@interface NSString (MSGraphManagedAppDataEncryptionType)

- (MSGraphManagedAppDataEncryptionType*) toMSGraphManagedAppDataEncryptionType;

@end
