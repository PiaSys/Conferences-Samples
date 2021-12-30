// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRiskEventType.h"

@interface MSGraphRiskEventType () {
    MSGraphRiskEventTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRiskEventTypeValue enumValue;
@end

@implementation MSGraphRiskEventType

+ (MSGraphRiskEventType*) unlikelyTravel {
    static MSGraphRiskEventType *_unlikelyTravel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unlikelyTravel = [[MSGraphRiskEventType alloc] init];
        _unlikelyTravel.enumValue = MSGraphRiskEventTypeUnlikelyTravel;
    });
    return _unlikelyTravel;
}
+ (MSGraphRiskEventType*) anonymizedIPAddress {
    static MSGraphRiskEventType *_anonymizedIPAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _anonymizedIPAddress = [[MSGraphRiskEventType alloc] init];
        _anonymizedIPAddress.enumValue = MSGraphRiskEventTypeAnonymizedIPAddress;
    });
    return _anonymizedIPAddress;
}
+ (MSGraphRiskEventType*) maliciousIPAddress {
    static MSGraphRiskEventType *_maliciousIPAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _maliciousIPAddress = [[MSGraphRiskEventType alloc] init];
        _maliciousIPAddress.enumValue = MSGraphRiskEventTypeMaliciousIPAddress;
    });
    return _maliciousIPAddress;
}
+ (MSGraphRiskEventType*) unfamiliarFeatures {
    static MSGraphRiskEventType *_unfamiliarFeatures;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unfamiliarFeatures = [[MSGraphRiskEventType alloc] init];
        _unfamiliarFeatures.enumValue = MSGraphRiskEventTypeUnfamiliarFeatures;
    });
    return _unfamiliarFeatures;
}
+ (MSGraphRiskEventType*) malwareInfectedIPAddress {
    static MSGraphRiskEventType *_malwareInfectedIPAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _malwareInfectedIPAddress = [[MSGraphRiskEventType alloc] init];
        _malwareInfectedIPAddress.enumValue = MSGraphRiskEventTypeMalwareInfectedIPAddress;
    });
    return _malwareInfectedIPAddress;
}
+ (MSGraphRiskEventType*) suspiciousIPAddress {
    static MSGraphRiskEventType *_suspiciousIPAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _suspiciousIPAddress = [[MSGraphRiskEventType alloc] init];
        _suspiciousIPAddress.enumValue = MSGraphRiskEventTypeSuspiciousIPAddress;
    });
    return _suspiciousIPAddress;
}
+ (MSGraphRiskEventType*) leakedCredentials {
    static MSGraphRiskEventType *_leakedCredentials;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _leakedCredentials = [[MSGraphRiskEventType alloc] init];
        _leakedCredentials.enumValue = MSGraphRiskEventTypeLeakedCredentials;
    });
    return _leakedCredentials;
}
+ (MSGraphRiskEventType*) investigationsThreatIntelligence {
    static MSGraphRiskEventType *_investigationsThreatIntelligence;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _investigationsThreatIntelligence = [[MSGraphRiskEventType alloc] init];
        _investigationsThreatIntelligence.enumValue = MSGraphRiskEventTypeInvestigationsThreatIntelligence;
    });
    return _investigationsThreatIntelligence;
}
+ (MSGraphRiskEventType*) generic {
    static MSGraphRiskEventType *_generic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _generic = [[MSGraphRiskEventType alloc] init];
        _generic.enumValue = MSGraphRiskEventTypeGeneric;
    });
    return _generic;
}
+ (MSGraphRiskEventType*) adminConfirmedUserCompromised {
    static MSGraphRiskEventType *_adminConfirmedUserCompromised;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminConfirmedUserCompromised = [[MSGraphRiskEventType alloc] init];
        _adminConfirmedUserCompromised.enumValue = MSGraphRiskEventTypeAdminConfirmedUserCompromised;
    });
    return _adminConfirmedUserCompromised;
}
+ (MSGraphRiskEventType*) mcasImpossibleTravel {
    static MSGraphRiskEventType *_mcasImpossibleTravel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mcasImpossibleTravel = [[MSGraphRiskEventType alloc] init];
        _mcasImpossibleTravel.enumValue = MSGraphRiskEventTypeMcasImpossibleTravel;
    });
    return _mcasImpossibleTravel;
}
+ (MSGraphRiskEventType*) mcasSuspiciousInboxManipulationRules {
    static MSGraphRiskEventType *_mcasSuspiciousInboxManipulationRules;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mcasSuspiciousInboxManipulationRules = [[MSGraphRiskEventType alloc] init];
        _mcasSuspiciousInboxManipulationRules.enumValue = MSGraphRiskEventTypeMcasSuspiciousInboxManipulationRules;
    });
    return _mcasSuspiciousInboxManipulationRules;
}
+ (MSGraphRiskEventType*) investigationsThreatIntelligenceSigninLinked {
    static MSGraphRiskEventType *_investigationsThreatIntelligenceSigninLinked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _investigationsThreatIntelligenceSigninLinked = [[MSGraphRiskEventType alloc] init];
        _investigationsThreatIntelligenceSigninLinked.enumValue = MSGraphRiskEventTypeInvestigationsThreatIntelligenceSigninLinked;
    });
    return _investigationsThreatIntelligenceSigninLinked;
}
+ (MSGraphRiskEventType*) maliciousIPAddressValidCredentialsBlockedIP {
    static MSGraphRiskEventType *_maliciousIPAddressValidCredentialsBlockedIP;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _maliciousIPAddressValidCredentialsBlockedIP = [[MSGraphRiskEventType alloc] init];
        _maliciousIPAddressValidCredentialsBlockedIP.enumValue = MSGraphRiskEventTypeMaliciousIPAddressValidCredentialsBlockedIP;
    });
    return _maliciousIPAddressValidCredentialsBlockedIP;
}
+ (MSGraphRiskEventType*) unknownFutureValue {
    static MSGraphRiskEventType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRiskEventType alloc] init];
        _unknownFutureValue.enumValue = MSGraphRiskEventTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRiskEventType*) UnknownEnumValue {
    static MSGraphRiskEventType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRiskEventType alloc] init];
        _unknownValue.enumValue = MSGraphRiskEventTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRiskEventType*) riskEventTypeWithEnumValue:(MSGraphRiskEventTypeValue)val {

    switch(val)
    {
        case MSGraphRiskEventTypeUnlikelyTravel:
            return [MSGraphRiskEventType unlikelyTravel];
        case MSGraphRiskEventTypeAnonymizedIPAddress:
            return [MSGraphRiskEventType anonymizedIPAddress];
        case MSGraphRiskEventTypeMaliciousIPAddress:
            return [MSGraphRiskEventType maliciousIPAddress];
        case MSGraphRiskEventTypeUnfamiliarFeatures:
            return [MSGraphRiskEventType unfamiliarFeatures];
        case MSGraphRiskEventTypeMalwareInfectedIPAddress:
            return [MSGraphRiskEventType malwareInfectedIPAddress];
        case MSGraphRiskEventTypeSuspiciousIPAddress:
            return [MSGraphRiskEventType suspiciousIPAddress];
        case MSGraphRiskEventTypeLeakedCredentials:
            return [MSGraphRiskEventType leakedCredentials];
        case MSGraphRiskEventTypeInvestigationsThreatIntelligence:
            return [MSGraphRiskEventType investigationsThreatIntelligence];
        case MSGraphRiskEventTypeGeneric:
            return [MSGraphRiskEventType generic];
        case MSGraphRiskEventTypeAdminConfirmedUserCompromised:
            return [MSGraphRiskEventType adminConfirmedUserCompromised];
        case MSGraphRiskEventTypeMcasImpossibleTravel:
            return [MSGraphRiskEventType mcasImpossibleTravel];
        case MSGraphRiskEventTypeMcasSuspiciousInboxManipulationRules:
            return [MSGraphRiskEventType mcasSuspiciousInboxManipulationRules];
        case MSGraphRiskEventTypeInvestigationsThreatIntelligenceSigninLinked:
            return [MSGraphRiskEventType investigationsThreatIntelligenceSigninLinked];
        case MSGraphRiskEventTypeMaliciousIPAddressValidCredentialsBlockedIP:
            return [MSGraphRiskEventType maliciousIPAddressValidCredentialsBlockedIP];
        case MSGraphRiskEventTypeUnknownFutureValue:
            return [MSGraphRiskEventType unknownFutureValue];
        case MSGraphRiskEventTypeEndOfEnum:
        default:
            return [MSGraphRiskEventType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRiskEventTypeUnlikelyTravel:
            return @"unlikelyTravel";
        case MSGraphRiskEventTypeAnonymizedIPAddress:
            return @"anonymizedIPAddress";
        case MSGraphRiskEventTypeMaliciousIPAddress:
            return @"maliciousIPAddress";
        case MSGraphRiskEventTypeUnfamiliarFeatures:
            return @"unfamiliarFeatures";
        case MSGraphRiskEventTypeMalwareInfectedIPAddress:
            return @"malwareInfectedIPAddress";
        case MSGraphRiskEventTypeSuspiciousIPAddress:
            return @"suspiciousIPAddress";
        case MSGraphRiskEventTypeLeakedCredentials:
            return @"leakedCredentials";
        case MSGraphRiskEventTypeInvestigationsThreatIntelligence:
            return @"investigationsThreatIntelligence";
        case MSGraphRiskEventTypeGeneric:
            return @"generic";
        case MSGraphRiskEventTypeAdminConfirmedUserCompromised:
            return @"adminConfirmedUserCompromised";
        case MSGraphRiskEventTypeMcasImpossibleTravel:
            return @"mcasImpossibleTravel";
        case MSGraphRiskEventTypeMcasSuspiciousInboxManipulationRules:
            return @"mcasSuspiciousInboxManipulationRules";
        case MSGraphRiskEventTypeInvestigationsThreatIntelligenceSigninLinked:
            return @"investigationsThreatIntelligenceSigninLinked";
        case MSGraphRiskEventTypeMaliciousIPAddressValidCredentialsBlockedIP:
            return @"maliciousIPAddressValidCredentialsBlockedIP";
        case MSGraphRiskEventTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRiskEventTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRiskEventTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRiskEventType)

- (MSGraphRiskEventType*) toMSGraphRiskEventType{

    if([self isEqualToString:@"unlikelyTravel"])
    {
          return [MSGraphRiskEventType unlikelyTravel];
    }
    else if([self isEqualToString:@"anonymizedIPAddress"])
    {
          return [MSGraphRiskEventType anonymizedIPAddress];
    }
    else if([self isEqualToString:@"maliciousIPAddress"])
    {
          return [MSGraphRiskEventType maliciousIPAddress];
    }
    else if([self isEqualToString:@"unfamiliarFeatures"])
    {
          return [MSGraphRiskEventType unfamiliarFeatures];
    }
    else if([self isEqualToString:@"malwareInfectedIPAddress"])
    {
          return [MSGraphRiskEventType malwareInfectedIPAddress];
    }
    else if([self isEqualToString:@"suspiciousIPAddress"])
    {
          return [MSGraphRiskEventType suspiciousIPAddress];
    }
    else if([self isEqualToString:@"leakedCredentials"])
    {
          return [MSGraphRiskEventType leakedCredentials];
    }
    else if([self isEqualToString:@"investigationsThreatIntelligence"])
    {
          return [MSGraphRiskEventType investigationsThreatIntelligence];
    }
    else if([self isEqualToString:@"generic"])
    {
          return [MSGraphRiskEventType generic];
    }
    else if([self isEqualToString:@"adminConfirmedUserCompromised"])
    {
          return [MSGraphRiskEventType adminConfirmedUserCompromised];
    }
    else if([self isEqualToString:@"mcasImpossibleTravel"])
    {
          return [MSGraphRiskEventType mcasImpossibleTravel];
    }
    else if([self isEqualToString:@"mcasSuspiciousInboxManipulationRules"])
    {
          return [MSGraphRiskEventType mcasSuspiciousInboxManipulationRules];
    }
    else if([self isEqualToString:@"investigationsThreatIntelligenceSigninLinked"])
    {
          return [MSGraphRiskEventType investigationsThreatIntelligenceSigninLinked];
    }
    else if([self isEqualToString:@"maliciousIPAddressValidCredentialsBlockedIP"])
    {
          return [MSGraphRiskEventType maliciousIPAddressValidCredentialsBlockedIP];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRiskEventType unknownFutureValue];
    }
    else {
        return [MSGraphRiskEventType UnknownEnumValue];
    }
}

@end
