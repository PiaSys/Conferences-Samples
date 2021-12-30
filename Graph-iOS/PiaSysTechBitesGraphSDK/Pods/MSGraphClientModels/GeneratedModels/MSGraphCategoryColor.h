// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCategoryColorValue){

	MSGraphCategoryColorNone = -1,
	MSGraphCategoryColorPreset0 = 0,
	MSGraphCategoryColorPreset1 = 1,
	MSGraphCategoryColorPreset2 = 2,
	MSGraphCategoryColorPreset3 = 3,
	MSGraphCategoryColorPreset4 = 4,
	MSGraphCategoryColorPreset5 = 5,
	MSGraphCategoryColorPreset6 = 6,
	MSGraphCategoryColorPreset7 = 7,
	MSGraphCategoryColorPreset8 = 8,
	MSGraphCategoryColorPreset9 = 9,
	MSGraphCategoryColorPreset10 = 10,
	MSGraphCategoryColorPreset11 = 11,
	MSGraphCategoryColorPreset12 = 12,
	MSGraphCategoryColorPreset13 = 13,
	MSGraphCategoryColorPreset14 = 14,
	MSGraphCategoryColorPreset15 = 15,
	MSGraphCategoryColorPreset16 = 16,
	MSGraphCategoryColorPreset17 = 17,
	MSGraphCategoryColorPreset18 = 18,
	MSGraphCategoryColorPreset19 = 19,
	MSGraphCategoryColorPreset20 = 20,
	MSGraphCategoryColorPreset21 = 21,
	MSGraphCategoryColorPreset22 = 22,
	MSGraphCategoryColorPreset23 = 23,
	MSGraphCategoryColorPreset24 = 24,
    MSGraphCategoryColorEndOfEnum
};

@interface MSGraphCategoryColor : NSObject

+(MSGraphCategoryColor*) none;
+(MSGraphCategoryColor*) preset0;
+(MSGraphCategoryColor*) preset1;
+(MSGraphCategoryColor*) preset2;
+(MSGraphCategoryColor*) preset3;
+(MSGraphCategoryColor*) preset4;
+(MSGraphCategoryColor*) preset5;
+(MSGraphCategoryColor*) preset6;
+(MSGraphCategoryColor*) preset7;
+(MSGraphCategoryColor*) preset8;
+(MSGraphCategoryColor*) preset9;
+(MSGraphCategoryColor*) preset10;
+(MSGraphCategoryColor*) preset11;
+(MSGraphCategoryColor*) preset12;
+(MSGraphCategoryColor*) preset13;
+(MSGraphCategoryColor*) preset14;
+(MSGraphCategoryColor*) preset15;
+(MSGraphCategoryColor*) preset16;
+(MSGraphCategoryColor*) preset17;
+(MSGraphCategoryColor*) preset18;
+(MSGraphCategoryColor*) preset19;
+(MSGraphCategoryColor*) preset20;
+(MSGraphCategoryColor*) preset21;
+(MSGraphCategoryColor*) preset22;
+(MSGraphCategoryColor*) preset23;
+(MSGraphCategoryColor*) preset24;

+(MSGraphCategoryColor*) UnknownEnumValue;

+(MSGraphCategoryColor*) categoryColorWithEnumValue:(MSGraphCategoryColorValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCategoryColorValue enumValue;

@end


@interface NSString (MSGraphCategoryColor)

- (MSGraphCategoryColor*) toMSGraphCategoryColor;

@end
