// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphImportanceValue){

	MSGraphImportanceLow = 0,
	MSGraphImportanceNormal = 1,
	MSGraphImportanceHigh = 2,
    MSGraphImportanceEndOfEnum
};

@interface MSGraphImportance : NSObject

+(MSGraphImportance*) low;
+(MSGraphImportance*) normal;
+(MSGraphImportance*) high;

+(MSGraphImportance*) UnknownEnumValue;

+(MSGraphImportance*) importanceWithEnumValue:(MSGraphImportanceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphImportanceValue enumValue;

@end


@interface NSString (MSGraphImportance)

- (MSGraphImportance*) toMSGraphImportance;

@end
