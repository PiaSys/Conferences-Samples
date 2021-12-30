// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRiskStateValue){

	MSGraphRiskStateNone = 0,
	MSGraphRiskStateConfirmedSafe = 1,
	MSGraphRiskStateRemediated = 2,
	MSGraphRiskStateDismissed = 3,
	MSGraphRiskStateAtRisk = 4,
	MSGraphRiskStateConfirmedCompromised = 5,
	MSGraphRiskStateUnknownFutureValue = 6,
    MSGraphRiskStateEndOfEnum
};

@interface MSGraphRiskState : NSObject

+(MSGraphRiskState*) none;
+(MSGraphRiskState*) confirmedSafe;
+(MSGraphRiskState*) remediated;
+(MSGraphRiskState*) dismissed;
+(MSGraphRiskState*) atRisk;
+(MSGraphRiskState*) confirmedCompromised;
+(MSGraphRiskState*) unknownFutureValue;

+(MSGraphRiskState*) UnknownEnumValue;

+(MSGraphRiskState*) riskStateWithEnumValue:(MSGraphRiskStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRiskStateValue enumValue;

@end


@interface NSString (MSGraphRiskState)

- (MSGraphRiskState*) toMSGraphRiskState;

@end
