// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChangeTypeValue){

	MSGraphChangeTypeCreated = 0,
	MSGraphChangeTypeUpdated = 1,
	MSGraphChangeTypeDeleted = 2,
    MSGraphChangeTypeEndOfEnum
};

@interface MSGraphChangeType : NSObject

+(MSGraphChangeType*) created;
+(MSGraphChangeType*) updated;
+(MSGraphChangeType*) deleted;

+(MSGraphChangeType*) UnknownEnumValue;

+(MSGraphChangeType*) changeTypeWithEnumValue:(MSGraphChangeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChangeTypeValue enumValue;

@end


@interface NSString (MSGraphChangeType)

- (MSGraphChangeType*) toMSGraphChangeType;

@end
