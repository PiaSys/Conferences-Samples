// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphLocationUniqueIdTypeValue){

	MSGraphLocationUniqueIdTypeUnknown = 0,
	MSGraphLocationUniqueIdTypeLocationStore = 1,
	MSGraphLocationUniqueIdTypeDirectory = 2,
	MSGraphLocationUniqueIdTypePrivate = 3,
	MSGraphLocationUniqueIdTypeBing = 4,
    MSGraphLocationUniqueIdTypeEndOfEnum
};

@interface MSGraphLocationUniqueIdType : NSObject

+(MSGraphLocationUniqueIdType*) unknown;
+(MSGraphLocationUniqueIdType*) locationStore;
+(MSGraphLocationUniqueIdType*) directory;
+(MSGraphLocationUniqueIdType*) private;
+(MSGraphLocationUniqueIdType*) bing;

+(MSGraphLocationUniqueIdType*) UnknownEnumValue;

+(MSGraphLocationUniqueIdType*) locationUniqueIdTypeWithEnumValue:(MSGraphLocationUniqueIdTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphLocationUniqueIdTypeValue enumValue;

@end


@interface NSString (MSGraphLocationUniqueIdType)

- (MSGraphLocationUniqueIdType*) toMSGraphLocationUniqueIdType;

@end
