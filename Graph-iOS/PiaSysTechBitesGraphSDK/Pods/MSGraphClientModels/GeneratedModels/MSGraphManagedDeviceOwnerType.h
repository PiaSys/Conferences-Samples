// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedDeviceOwnerTypeValue){

	MSGraphManagedDeviceOwnerTypeUnknown = 0,
	MSGraphManagedDeviceOwnerTypeCompany = 1,
	MSGraphManagedDeviceOwnerTypePersonal = 2,
    MSGraphManagedDeviceOwnerTypeEndOfEnum
};

@interface MSGraphManagedDeviceOwnerType : NSObject

+(MSGraphManagedDeviceOwnerType*) unknown;
+(MSGraphManagedDeviceOwnerType*) company;
+(MSGraphManagedDeviceOwnerType*) personal;

+(MSGraphManagedDeviceOwnerType*) UnknownEnumValue;

+(MSGraphManagedDeviceOwnerType*) managedDeviceOwnerTypeWithEnumValue:(MSGraphManagedDeviceOwnerTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedDeviceOwnerTypeValue enumValue;

@end


@interface NSString (MSGraphManagedDeviceOwnerType)

- (MSGraphManagedDeviceOwnerType*) toMSGraphManagedDeviceOwnerType;

@end
