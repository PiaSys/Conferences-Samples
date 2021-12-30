// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRiskEventTypeValue){

	MSGraphRiskEventTypeUnlikelyTravel = 0,
	MSGraphRiskEventTypeAnonymizedIPAddress = 1,
	MSGraphRiskEventTypeMaliciousIPAddress = 2,
	MSGraphRiskEventTypeUnfamiliarFeatures = 3,
	MSGraphRiskEventTypeMalwareInfectedIPAddress = 4,
	MSGraphRiskEventTypeSuspiciousIPAddress = 5,
	MSGraphRiskEventTypeLeakedCredentials = 6,
	MSGraphRiskEventTypeInvestigationsThreatIntelligence = 7,
	MSGraphRiskEventTypeGeneric = 8,
	MSGraphRiskEventTypeAdminConfirmedUserCompromised = 9,
	MSGraphRiskEventTypeMcasImpossibleTravel = 10,
	MSGraphRiskEventTypeMcasSuspiciousInboxManipulationRules = 11,
	MSGraphRiskEventTypeInvestigationsThreatIntelligenceSigninLinked = 12,
	MSGraphRiskEventTypeMaliciousIPAddressValidCredentialsBlockedIP = 13,
	MSGraphRiskEventTypeUnknownFutureValue = 14,
    MSGraphRiskEventTypeEndOfEnum
};

@interface MSGraphRiskEventType : NSObject

+(MSGraphRiskEventType*) unlikelyTravel;
+(MSGraphRiskEventType*) anonymizedIPAddress;
+(MSGraphRiskEventType*) maliciousIPAddress;
+(MSGraphRiskEventType*) unfamiliarFeatures;
+(MSGraphRiskEventType*) malwareInfectedIPAddress;
+(MSGraphRiskEventType*) suspiciousIPAddress;
+(MSGraphRiskEventType*) leakedCredentials;
+(MSGraphRiskEventType*) investigationsThreatIntelligence;
+(MSGraphRiskEventType*) generic;
+(MSGraphRiskEventType*) adminConfirmedUserCompromised;
+(MSGraphRiskEventType*) mcasImpossibleTravel;
+(MSGraphRiskEventType*) mcasSuspiciousInboxManipulationRules;
+(MSGraphRiskEventType*) investigationsThreatIntelligenceSigninLinked;
+(MSGraphRiskEventType*) maliciousIPAddressValidCredentialsBlockedIP;
+(MSGraphRiskEventType*) unknownFutureValue;

+(MSGraphRiskEventType*) UnknownEnumValue;

+(MSGraphRiskEventType*) riskEventTypeWithEnumValue:(MSGraphRiskEventTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRiskEventTypeValue enumValue;

@end


@interface NSString (MSGraphRiskEventType)

- (MSGraphRiskEventType*) toMSGraphRiskEventType;

@end
