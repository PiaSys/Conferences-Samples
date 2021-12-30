// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAlertFeedback.h"

@interface MSGraphAlertFeedback () {
    MSGraphAlertFeedbackValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAlertFeedbackValue enumValue;
@end

@implementation MSGraphAlertFeedback

+ (MSGraphAlertFeedback*) unknown {
    static MSGraphAlertFeedback *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphAlertFeedback alloc] init];
        _unknown.enumValue = MSGraphAlertFeedbackUnknown;
    });
    return _unknown;
}
+ (MSGraphAlertFeedback*) truePositive {
    static MSGraphAlertFeedback *_truePositive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _truePositive = [[MSGraphAlertFeedback alloc] init];
        _truePositive.enumValue = MSGraphAlertFeedbackTruePositive;
    });
    return _truePositive;
}
+ (MSGraphAlertFeedback*) falsePositive {
    static MSGraphAlertFeedback *_falsePositive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _falsePositive = [[MSGraphAlertFeedback alloc] init];
        _falsePositive.enumValue = MSGraphAlertFeedbackFalsePositive;
    });
    return _falsePositive;
}
+ (MSGraphAlertFeedback*) benignPositive {
    static MSGraphAlertFeedback *_benignPositive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _benignPositive = [[MSGraphAlertFeedback alloc] init];
        _benignPositive.enumValue = MSGraphAlertFeedbackBenignPositive;
    });
    return _benignPositive;
}
+ (MSGraphAlertFeedback*) unknownFutureValue {
    static MSGraphAlertFeedback *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAlertFeedback alloc] init];
        _unknownFutureValue.enumValue = MSGraphAlertFeedbackUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAlertFeedback*) UnknownEnumValue {
    static MSGraphAlertFeedback *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAlertFeedback alloc] init];
        _unknownValue.enumValue = MSGraphAlertFeedbackEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAlertFeedback*) alertFeedbackWithEnumValue:(MSGraphAlertFeedbackValue)val {

    switch(val)
    {
        case MSGraphAlertFeedbackUnknown:
            return [MSGraphAlertFeedback unknown];
        case MSGraphAlertFeedbackTruePositive:
            return [MSGraphAlertFeedback truePositive];
        case MSGraphAlertFeedbackFalsePositive:
            return [MSGraphAlertFeedback falsePositive];
        case MSGraphAlertFeedbackBenignPositive:
            return [MSGraphAlertFeedback benignPositive];
        case MSGraphAlertFeedbackUnknownFutureValue:
            return [MSGraphAlertFeedback unknownFutureValue];
        case MSGraphAlertFeedbackEndOfEnum:
        default:
            return [MSGraphAlertFeedback UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAlertFeedbackUnknown:
            return @"unknown";
        case MSGraphAlertFeedbackTruePositive:
            return @"truePositive";
        case MSGraphAlertFeedbackFalsePositive:
            return @"falsePositive";
        case MSGraphAlertFeedbackBenignPositive:
            return @"benignPositive";
        case MSGraphAlertFeedbackUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAlertFeedbackEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAlertFeedbackValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAlertFeedback)

- (MSGraphAlertFeedback*) toMSGraphAlertFeedback{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphAlertFeedback unknown];
    }
    else if([self isEqualToString:@"truePositive"])
    {
          return [MSGraphAlertFeedback truePositive];
    }
    else if([self isEqualToString:@"falsePositive"])
    {
          return [MSGraphAlertFeedback falsePositive];
    }
    else if([self isEqualToString:@"benignPositive"])
    {
          return [MSGraphAlertFeedback benignPositive];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAlertFeedback unknownFutureValue];
    }
    else {
        return [MSGraphAlertFeedback UnknownEnumValue];
    }
}

@end
