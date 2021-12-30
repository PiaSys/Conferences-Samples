// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphProcessIntegrityLevelValue){

	MSGraphProcessIntegrityLevelUnknown = 0,
	MSGraphProcessIntegrityLevelUntrusted = 1,
	MSGraphProcessIntegrityLevelLow = 2,
	MSGraphProcessIntegrityLevelMedium = 3,
	MSGraphProcessIntegrityLevelHigh = 4,
	MSGraphProcessIntegrityLevelSystem = 5,
	MSGraphProcessIntegrityLevelUnknownFutureValue = 127,
    MSGraphProcessIntegrityLevelEndOfEnum
};

@interface MSGraphProcessIntegrityLevel : NSObject

+(MSGraphProcessIntegrityLevel*) unknown;
+(MSGraphProcessIntegrityLevel*) untrusted;
+(MSGraphProcessIntegrityLevel*) low;
+(MSGraphProcessIntegrityLevel*) medium;
+(MSGraphProcessIntegrityLevel*) high;
+(MSGraphProcessIntegrityLevel*) system;
+(MSGraphProcessIntegrityLevel*) unknownFutureValue;

+(MSGraphProcessIntegrityLevel*) UnknownEnumValue;

+(MSGraphProcessIntegrityLevel*) processIntegrityLevelWithEnumValue:(MSGraphProcessIntegrityLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphProcessIntegrityLevelValue enumValue;

@end


@interface NSString (MSGraphProcessIntegrityLevel)

- (MSGraphProcessIntegrityLevel*) toMSGraphProcessIntegrityLevel;

@end
