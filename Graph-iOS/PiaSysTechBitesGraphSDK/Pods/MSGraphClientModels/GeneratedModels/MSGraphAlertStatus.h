// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAlertStatusValue){

	MSGraphAlertStatusUnknown = 0,
	MSGraphAlertStatusNewAlert = 1,
	MSGraphAlertStatusInProgress = 2,
	MSGraphAlertStatusResolved = 3,
	MSGraphAlertStatusDismissed = 4,
	MSGraphAlertStatusUnknownFutureValue = 127,
    MSGraphAlertStatusEndOfEnum
};

@interface MSGraphAlertStatus : NSObject

+(MSGraphAlertStatus*) unknown;
+(MSGraphAlertStatus*) newAlert;
+(MSGraphAlertStatus*) inProgress;
+(MSGraphAlertStatus*) resolved;
+(MSGraphAlertStatus*) dismissed;
+(MSGraphAlertStatus*) unknownFutureValue;

+(MSGraphAlertStatus*) UnknownEnumValue;

+(MSGraphAlertStatus*) alertStatusWithEnumValue:(MSGraphAlertStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAlertStatusValue enumValue;

@end


@interface NSString (MSGraphAlertStatus)

- (MSGraphAlertStatus*) toMSGraphAlertStatus;

@end
