// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPhysicalAddressTypeValue){

	MSGraphPhysicalAddressTypeUnknown = 0,
	MSGraphPhysicalAddressTypeHome = 1,
	MSGraphPhysicalAddressTypeBusiness = 2,
	MSGraphPhysicalAddressTypeOther = 3,
    MSGraphPhysicalAddressTypeEndOfEnum
};

@interface MSGraphPhysicalAddressType : NSObject

+(MSGraphPhysicalAddressType*) unknown;
+(MSGraphPhysicalAddressType*) home;
+(MSGraphPhysicalAddressType*) business;
+(MSGraphPhysicalAddressType*) other;

+(MSGraphPhysicalAddressType*) UnknownEnumValue;

+(MSGraphPhysicalAddressType*) physicalAddressTypeWithEnumValue:(MSGraphPhysicalAddressTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPhysicalAddressTypeValue enumValue;

@end


@interface NSString (MSGraphPhysicalAddressType)

- (MSGraphPhysicalAddressType*) toMSGraphPhysicalAddressType;

@end
