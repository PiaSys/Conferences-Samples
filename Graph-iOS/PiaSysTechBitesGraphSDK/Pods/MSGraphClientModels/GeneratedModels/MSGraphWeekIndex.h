// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWeekIndexValue){

	MSGraphWeekIndexFirst = 0,
	MSGraphWeekIndexSecond = 1,
	MSGraphWeekIndexThird = 2,
	MSGraphWeekIndexFourth = 3,
	MSGraphWeekIndexLast = 4,
    MSGraphWeekIndexEndOfEnum
};

@interface MSGraphWeekIndex : NSObject

+(MSGraphWeekIndex*) first;
+(MSGraphWeekIndex*) second;
+(MSGraphWeekIndex*) third;
+(MSGraphWeekIndex*) fourth;
+(MSGraphWeekIndex*) last;

+(MSGraphWeekIndex*) UnknownEnumValue;

+(MSGraphWeekIndex*) weekIndexWithEnumValue:(MSGraphWeekIndexValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWeekIndexValue enumValue;

@end


@interface NSString (MSGraphWeekIndex)

- (MSGraphWeekIndex*) toMSGraphWeekIndex;

@end
