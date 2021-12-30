// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRiskState.h"

@interface MSGraphRiskState () {
    MSGraphRiskStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRiskStateValue enumValue;
@end

@implementation MSGraphRiskState

+ (MSGraphRiskState*) none {
    static MSGraphRiskState *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphRiskState alloc] init];
        _none.enumValue = MSGraphRiskStateNone;
    });
    return _none;
}
+ (MSGraphRiskState*) confirmedSafe {
    static MSGraphRiskState *_confirmedSafe;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _confirmedSafe = [[MSGraphRiskState alloc] init];
        _confirmedSafe.enumValue = MSGraphRiskStateConfirmedSafe;
    });
    return _confirmedSafe;
}
+ (MSGraphRiskState*) remediated {
    static MSGraphRiskState *_remediated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _remediated = [[MSGraphRiskState alloc] init];
        _remediated.enumValue = MSGraphRiskStateRemediated;
    });
    return _remediated;
}
+ (MSGraphRiskState*) dismissed {
    static MSGraphRiskState *_dismissed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dismissed = [[MSGraphRiskState alloc] init];
        _dismissed.enumValue = MSGraphRiskStateDismissed;
    });
    return _dismissed;
}
+ (MSGraphRiskState*) atRisk {
    static MSGraphRiskState *_atRisk;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _atRisk = [[MSGraphRiskState alloc] init];
        _atRisk.enumValue = MSGraphRiskStateAtRisk;
    });
    return _atRisk;
}
+ (MSGraphRiskState*) confirmedCompromised {
    static MSGraphRiskState *_confirmedCompromised;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _confirmedCompromised = [[MSGraphRiskState alloc] init];
        _confirmedCompromised.enumValue = MSGraphRiskStateConfirmedCompromised;
    });
    return _confirmedCompromised;
}
+ (MSGraphRiskState*) unknownFutureValue {
    static MSGraphRiskState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRiskState alloc] init];
        _unknownFutureValue.enumValue = MSGraphRiskStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRiskState*) UnknownEnumValue {
    static MSGraphRiskState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRiskState alloc] init];
        _unknownValue.enumValue = MSGraphRiskStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRiskState*) riskStateWithEnumValue:(MSGraphRiskStateValue)val {

    switch(val)
    {
        case MSGraphRiskStateNone:
            return [MSGraphRiskState none];
        case MSGraphRiskStateConfirmedSafe:
            return [MSGraphRiskState confirmedSafe];
        case MSGraphRiskStateRemediated:
            return [MSGraphRiskState remediated];
        case MSGraphRiskStateDismissed:
            return [MSGraphRiskState dismissed];
        case MSGraphRiskStateAtRisk:
            return [MSGraphRiskState atRisk];
        case MSGraphRiskStateConfirmedCompromised:
            return [MSGraphRiskState confirmedCompromised];
        case MSGraphRiskStateUnknownFutureValue:
            return [MSGraphRiskState unknownFutureValue];
        case MSGraphRiskStateEndOfEnum:
        default:
            return [MSGraphRiskState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRiskStateNone:
            return @"none";
        case MSGraphRiskStateConfirmedSafe:
            return @"confirmedSafe";
        case MSGraphRiskStateRemediated:
            return @"remediated";
        case MSGraphRiskStateDismissed:
            return @"dismissed";
        case MSGraphRiskStateAtRisk:
            return @"atRisk";
        case MSGraphRiskStateConfirmedCompromised:
            return @"confirmedCompromised";
        case MSGraphRiskStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRiskStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRiskStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRiskState)

- (MSGraphRiskState*) toMSGraphRiskState{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphRiskState none];
    }
    else if([self isEqualToString:@"confirmedSafe"])
    {
          return [MSGraphRiskState confirmedSafe];
    }
    else if([self isEqualToString:@"remediated"])
    {
          return [MSGraphRiskState remediated];
    }
    else if([self isEqualToString:@"dismissed"])
    {
          return [MSGraphRiskState dismissed];
    }
    else if([self isEqualToString:@"atRisk"])
    {
          return [MSGraphRiskState atRisk];
    }
    else if([self isEqualToString:@"confirmedCompromised"])
    {
          return [MSGraphRiskState confirmedCompromised];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRiskState unknownFutureValue];
    }
    else {
        return [MSGraphRiskState UnknownEnumValue];
    }
}

@end
