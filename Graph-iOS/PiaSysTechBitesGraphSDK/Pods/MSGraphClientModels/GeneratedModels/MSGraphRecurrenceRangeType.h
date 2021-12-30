// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRecurrenceRangeTypeValue){

	MSGraphRecurrenceRangeTypeEndDate = 0,
	MSGraphRecurrenceRangeTypeNoEnd = 1,
	MSGraphRecurrenceRangeTypeNumbered = 2,
    MSGraphRecurrenceRangeTypeEndOfEnum
};

@interface MSGraphRecurrenceRangeType : NSObject

+(MSGraphRecurrenceRangeType*) endDate;
+(MSGraphRecurrenceRangeType*) noEnd;
+(MSGraphRecurrenceRangeType*) numbered;

+(MSGraphRecurrenceRangeType*) UnknownEnumValue;

+(MSGraphRecurrenceRangeType*) recurrenceRangeTypeWithEnumValue:(MSGraphRecurrenceRangeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRecurrenceRangeTypeValue enumValue;

@end


@interface NSString (MSGraphRecurrenceRangeType)

- (MSGraphRecurrenceRangeType*) toMSGraphRecurrenceRangeType;

@end
