// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRegistryValueTypeValue){

	MSGraphRegistryValueTypeUnknown = 0,
	MSGraphRegistryValueTypeBinary = 1,
	MSGraphRegistryValueTypeDword = 2,
	MSGraphRegistryValueTypeDwordLittleEndian = 3,
	MSGraphRegistryValueTypeDwordBigEndian = 4,
	MSGraphRegistryValueTypeExpandSz = 5,
	MSGraphRegistryValueTypeLink = 6,
	MSGraphRegistryValueTypeMultiSz = 7,
	MSGraphRegistryValueTypeNone = 8,
	MSGraphRegistryValueTypeQword = 9,
	MSGraphRegistryValueTypeQwordlittleEndian = 10,
	MSGraphRegistryValueTypeSz = 11,
	MSGraphRegistryValueTypeUnknownFutureValue = 127,
    MSGraphRegistryValueTypeEndOfEnum
};

@interface MSGraphRegistryValueType : NSObject

+(MSGraphRegistryValueType*) unknown;
+(MSGraphRegistryValueType*) binary;
+(MSGraphRegistryValueType*) dword;
+(MSGraphRegistryValueType*) dwordLittleEndian;
+(MSGraphRegistryValueType*) dwordBigEndian;
+(MSGraphRegistryValueType*) expandSz;
+(MSGraphRegistryValueType*) link;
+(MSGraphRegistryValueType*) multiSz;
+(MSGraphRegistryValueType*) none;
+(MSGraphRegistryValueType*) qword;
+(MSGraphRegistryValueType*) qwordlittleEndian;
+(MSGraphRegistryValueType*) sz;
+(MSGraphRegistryValueType*) unknownFutureValue;

+(MSGraphRegistryValueType*) UnknownEnumValue;

+(MSGraphRegistryValueType*) registryValueTypeWithEnumValue:(MSGraphRegistryValueTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRegistryValueTypeValue enumValue;

@end


@interface NSString (MSGraphRegistryValueType)

- (MSGraphRegistryValueType*) toMSGraphRegistryValueType;

@end
