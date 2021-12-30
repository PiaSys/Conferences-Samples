// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBodyTypeValue){

	MSGraphBodyTypeText = 0,
	MSGraphBodyTypeHtml = 1,
    MSGraphBodyTypeEndOfEnum
};

@interface MSGraphBodyType : NSObject

+(MSGraphBodyType*) text;
+(MSGraphBodyType*) html;

+(MSGraphBodyType*) UnknownEnumValue;

+(MSGraphBodyType*) bodyTypeWithEnumValue:(MSGraphBodyTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBodyTypeValue enumValue;

@end


@interface NSString (MSGraphBodyType)

- (MSGraphBodyType*) toMSGraphBodyType;

@end
