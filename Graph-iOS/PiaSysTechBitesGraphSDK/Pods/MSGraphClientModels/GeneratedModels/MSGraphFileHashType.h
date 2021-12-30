// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFileHashTypeValue){

	MSGraphFileHashTypeUnknown = 0,
	MSGraphFileHashTypeSha1 = 1,
	MSGraphFileHashTypeSha256 = 2,
	MSGraphFileHashTypeMd5 = 3,
	MSGraphFileHashTypeAuthenticodeHash256 = 4,
	MSGraphFileHashTypeLsHash = 5,
	MSGraphFileHashTypeCtph = 6,
	MSGraphFileHashTypeUnknownFutureValue = 127,
    MSGraphFileHashTypeEndOfEnum
};

@interface MSGraphFileHashType : NSObject

+(MSGraphFileHashType*) unknown;
+(MSGraphFileHashType*) sha1;
+(MSGraphFileHashType*) sha256;
+(MSGraphFileHashType*) md5;
+(MSGraphFileHashType*) authenticodeHash256;
+(MSGraphFileHashType*) lsHash;
+(MSGraphFileHashType*) ctph;
+(MSGraphFileHashType*) unknownFutureValue;

+(MSGraphFileHashType*) UnknownEnumValue;

+(MSGraphFileHashType*) fileHashTypeWithEnumValue:(MSGraphFileHashTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFileHashTypeValue enumValue;

@end


@interface NSString (MSGraphFileHashType)

- (MSGraphFileHashType*) toMSGraphFileHashType;

@end
