// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCalendarColorValue){

	MSGraphCalendarColorAuto = -1,
	MSGraphCalendarColorLightBlue = 0,
	MSGraphCalendarColorLightGreen = 1,
	MSGraphCalendarColorLightOrange = 2,
	MSGraphCalendarColorLightGray = 3,
	MSGraphCalendarColorLightYellow = 4,
	MSGraphCalendarColorLightTeal = 5,
	MSGraphCalendarColorLightPink = 6,
	MSGraphCalendarColorLightBrown = 7,
	MSGraphCalendarColorLightRed = 8,
	MSGraphCalendarColorMaxColor = 9,
    MSGraphCalendarColorEndOfEnum
};

@interface MSGraphCalendarColor : NSObject

+(MSGraphCalendarColor*) auto;
+(MSGraphCalendarColor*) lightBlue;
+(MSGraphCalendarColor*) lightGreen;
+(MSGraphCalendarColor*) lightOrange;
+(MSGraphCalendarColor*) lightGray;
+(MSGraphCalendarColor*) lightYellow;
+(MSGraphCalendarColor*) lightTeal;
+(MSGraphCalendarColor*) lightPink;
+(MSGraphCalendarColor*) lightBrown;
+(MSGraphCalendarColor*) lightRed;
+(MSGraphCalendarColor*) maxColor;

+(MSGraphCalendarColor*) UnknownEnumValue;

+(MSGraphCalendarColor*) calendarColorWithEnumValue:(MSGraphCalendarColorValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCalendarColorValue enumValue;

@end


@interface NSString (MSGraphCalendarColor)

- (MSGraphCalendarColor*) toMSGraphCalendarColor;

@end
