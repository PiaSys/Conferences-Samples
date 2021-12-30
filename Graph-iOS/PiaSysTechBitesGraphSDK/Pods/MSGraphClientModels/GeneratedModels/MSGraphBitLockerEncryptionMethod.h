// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBitLockerEncryptionMethodValue){

	MSGraphBitLockerEncryptionMethodAesCbc128 = 3,
	MSGraphBitLockerEncryptionMethodAesCbc256 = 4,
	MSGraphBitLockerEncryptionMethodXtsAes128 = 6,
	MSGraphBitLockerEncryptionMethodXtsAes256 = 7,
    MSGraphBitLockerEncryptionMethodEndOfEnum
};

@interface MSGraphBitLockerEncryptionMethod : NSObject

+(MSGraphBitLockerEncryptionMethod*) aesCbc128;
+(MSGraphBitLockerEncryptionMethod*) aesCbc256;
+(MSGraphBitLockerEncryptionMethod*) xtsAes128;
+(MSGraphBitLockerEncryptionMethod*) xtsAes256;

+(MSGraphBitLockerEncryptionMethod*) UnknownEnumValue;

+(MSGraphBitLockerEncryptionMethod*) bitLockerEncryptionMethodWithEnumValue:(MSGraphBitLockerEncryptionMethodValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBitLockerEncryptionMethodValue enumValue;

@end


@interface NSString (MSGraphBitLockerEncryptionMethod)

- (MSGraphBitLockerEncryptionMethod*) toMSGraphBitLockerEncryptionMethod;

@end
