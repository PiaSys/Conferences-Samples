// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnenotePatchInsertPositionValue){

	MSGraphOnenotePatchInsertPositionAfter = 0,
	MSGraphOnenotePatchInsertPositionBefore = 1,
    MSGraphOnenotePatchInsertPositionEndOfEnum
};

@interface MSGraphOnenotePatchInsertPosition : NSObject

+(MSGraphOnenotePatchInsertPosition*) after;
+(MSGraphOnenotePatchInsertPosition*) before;

+(MSGraphOnenotePatchInsertPosition*) UnknownEnumValue;

+(MSGraphOnenotePatchInsertPosition*) onenotePatchInsertPositionWithEnumValue:(MSGraphOnenotePatchInsertPositionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnenotePatchInsertPositionValue enumValue;

@end


@interface NSString (MSGraphOnenotePatchInsertPosition)

- (MSGraphOnenotePatchInsertPosition*) toMSGraphOnenotePatchInsertPosition;

@end
