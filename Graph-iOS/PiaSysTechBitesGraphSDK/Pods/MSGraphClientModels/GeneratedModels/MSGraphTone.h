// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphToneValue){

	MSGraphToneTone0 = 0,
	MSGraphToneTone1 = 1,
	MSGraphToneTone2 = 2,
	MSGraphToneTone3 = 3,
	MSGraphToneTone4 = 4,
	MSGraphToneTone5 = 5,
	MSGraphToneTone6 = 6,
	MSGraphToneTone7 = 7,
	MSGraphToneTone8 = 8,
	MSGraphToneTone9 = 9,
	MSGraphToneStar = 10,
	MSGraphTonePound = 11,
	MSGraphToneA = 12,
	MSGraphToneB = 13,
	MSGraphToneC = 14,
	MSGraphToneD = 15,
	MSGraphToneFlash = 16,
    MSGraphToneEndOfEnum
};

@interface MSGraphTone : NSObject

+(MSGraphTone*) tone0;
+(MSGraphTone*) tone1;
+(MSGraphTone*) tone2;
+(MSGraphTone*) tone3;
+(MSGraphTone*) tone4;
+(MSGraphTone*) tone5;
+(MSGraphTone*) tone6;
+(MSGraphTone*) tone7;
+(MSGraphTone*) tone8;
+(MSGraphTone*) tone9;
+(MSGraphTone*) star;
+(MSGraphTone*) pound;
+(MSGraphTone*) a;
+(MSGraphTone*) b;
+(MSGraphTone*) c;
+(MSGraphTone*) d;
+(MSGraphTone*) flash;

+(MSGraphTone*) UnknownEnumValue;

+(MSGraphTone*) toneWithEnumValue:(MSGraphToneValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphToneValue enumValue;

@end


@interface NSString (MSGraphTone)

- (MSGraphTone*) toMSGraphTone;

@end
