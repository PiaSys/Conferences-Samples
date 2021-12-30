// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAlertSeverityValue){

	MSGraphAlertSeverityUnknown = 0,
	MSGraphAlertSeverityInformational = 1,
	MSGraphAlertSeverityLow = 2,
	MSGraphAlertSeverityMedium = 3,
	MSGraphAlertSeverityHigh = 4,
	MSGraphAlertSeverityUnknownFutureValue = 127,
    MSGraphAlertSeverityEndOfEnum
};

@interface MSGraphAlertSeverity : NSObject

+(MSGraphAlertSeverity*) unknown;
+(MSGraphAlertSeverity*) informational;
+(MSGraphAlertSeverity*) low;
+(MSGraphAlertSeverity*) medium;
+(MSGraphAlertSeverity*) high;
+(MSGraphAlertSeverity*) unknownFutureValue;

+(MSGraphAlertSeverity*) UnknownEnumValue;

+(MSGraphAlertSeverity*) alertSeverityWithEnumValue:(MSGraphAlertSeverityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAlertSeverityValue enumValue;

@end


@interface NSString (MSGraphAlertSeverity)

- (MSGraphAlertSeverity*) toMSGraphAlertSeverity;

@end
