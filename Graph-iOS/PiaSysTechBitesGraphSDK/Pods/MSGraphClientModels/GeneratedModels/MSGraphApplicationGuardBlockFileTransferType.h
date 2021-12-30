// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphApplicationGuardBlockFileTransferTypeValue){

	MSGraphApplicationGuardBlockFileTransferTypeNotConfigured = 0,
	MSGraphApplicationGuardBlockFileTransferTypeBlockImageAndTextFile = 1,
	MSGraphApplicationGuardBlockFileTransferTypeBlockImageFile = 2,
	MSGraphApplicationGuardBlockFileTransferTypeBlockNone = 3,
	MSGraphApplicationGuardBlockFileTransferTypeBlockTextFile = 4,
    MSGraphApplicationGuardBlockFileTransferTypeEndOfEnum
};

@interface MSGraphApplicationGuardBlockFileTransferType : NSObject

+(MSGraphApplicationGuardBlockFileTransferType*) notConfigured;
+(MSGraphApplicationGuardBlockFileTransferType*) blockImageAndTextFile;
+(MSGraphApplicationGuardBlockFileTransferType*) blockImageFile;
+(MSGraphApplicationGuardBlockFileTransferType*) blockNone;
+(MSGraphApplicationGuardBlockFileTransferType*) blockTextFile;

+(MSGraphApplicationGuardBlockFileTransferType*) UnknownEnumValue;

+(MSGraphApplicationGuardBlockFileTransferType*) applicationGuardBlockFileTransferTypeWithEnumValue:(MSGraphApplicationGuardBlockFileTransferTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphApplicationGuardBlockFileTransferTypeValue enumValue;

@end


@interface NSString (MSGraphApplicationGuardBlockFileTransferType)

- (MSGraphApplicationGuardBlockFileTransferType*) toMSGraphApplicationGuardBlockFileTransferType;

@end
