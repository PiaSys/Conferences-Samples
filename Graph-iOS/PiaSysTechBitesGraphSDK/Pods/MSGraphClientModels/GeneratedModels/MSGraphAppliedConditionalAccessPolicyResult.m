// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAppliedConditionalAccessPolicyResult.h"

@interface MSGraphAppliedConditionalAccessPolicyResult () {
    MSGraphAppliedConditionalAccessPolicyResultValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAppliedConditionalAccessPolicyResultValue enumValue;
@end

@implementation MSGraphAppliedConditionalAccessPolicyResult

+ (MSGraphAppliedConditionalAccessPolicyResult*) success {
    static MSGraphAppliedConditionalAccessPolicyResult *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _success.enumValue = MSGraphAppliedConditionalAccessPolicyResultSuccess;
    });
    return _success;
}
+ (MSGraphAppliedConditionalAccessPolicyResult*) failure {
    static MSGraphAppliedConditionalAccessPolicyResult *_failure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failure = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _failure.enumValue = MSGraphAppliedConditionalAccessPolicyResultFailure;
    });
    return _failure;
}
+ (MSGraphAppliedConditionalAccessPolicyResult*) notApplied {
    static MSGraphAppliedConditionalAccessPolicyResult *_notApplied;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notApplied = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _notApplied.enumValue = MSGraphAppliedConditionalAccessPolicyResultNotApplied;
    });
    return _notApplied;
}
+ (MSGraphAppliedConditionalAccessPolicyResult*) notEnabled {
    static MSGraphAppliedConditionalAccessPolicyResult *_notEnabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notEnabled = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _notEnabled.enumValue = MSGraphAppliedConditionalAccessPolicyResultNotEnabled;
    });
    return _notEnabled;
}
+ (MSGraphAppliedConditionalAccessPolicyResult*) unknown {
    static MSGraphAppliedConditionalAccessPolicyResult *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _unknown.enumValue = MSGraphAppliedConditionalAccessPolicyResultUnknown;
    });
    return _unknown;
}
+ (MSGraphAppliedConditionalAccessPolicyResult*) unknownFutureValue {
    static MSGraphAppliedConditionalAccessPolicyResult *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _unknownFutureValue.enumValue = MSGraphAppliedConditionalAccessPolicyResultUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAppliedConditionalAccessPolicyResult*) UnknownEnumValue {
    static MSGraphAppliedConditionalAccessPolicyResult *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAppliedConditionalAccessPolicyResult alloc] init];
        _unknownValue.enumValue = MSGraphAppliedConditionalAccessPolicyResultEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAppliedConditionalAccessPolicyResult*) appliedConditionalAccessPolicyResultWithEnumValue:(MSGraphAppliedConditionalAccessPolicyResultValue)val {

    switch(val)
    {
        case MSGraphAppliedConditionalAccessPolicyResultSuccess:
            return [MSGraphAppliedConditionalAccessPolicyResult success];
        case MSGraphAppliedConditionalAccessPolicyResultFailure:
            return [MSGraphAppliedConditionalAccessPolicyResult failure];
        case MSGraphAppliedConditionalAccessPolicyResultNotApplied:
            return [MSGraphAppliedConditionalAccessPolicyResult notApplied];
        case MSGraphAppliedConditionalAccessPolicyResultNotEnabled:
            return [MSGraphAppliedConditionalAccessPolicyResult notEnabled];
        case MSGraphAppliedConditionalAccessPolicyResultUnknown:
            return [MSGraphAppliedConditionalAccessPolicyResult unknown];
        case MSGraphAppliedConditionalAccessPolicyResultUnknownFutureValue:
            return [MSGraphAppliedConditionalAccessPolicyResult unknownFutureValue];
        case MSGraphAppliedConditionalAccessPolicyResultEndOfEnum:
        default:
            return [MSGraphAppliedConditionalAccessPolicyResult UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAppliedConditionalAccessPolicyResultSuccess:
            return @"success";
        case MSGraphAppliedConditionalAccessPolicyResultFailure:
            return @"failure";
        case MSGraphAppliedConditionalAccessPolicyResultNotApplied:
            return @"notApplied";
        case MSGraphAppliedConditionalAccessPolicyResultNotEnabled:
            return @"notEnabled";
        case MSGraphAppliedConditionalAccessPolicyResultUnknown:
            return @"unknown";
        case MSGraphAppliedConditionalAccessPolicyResultUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAppliedConditionalAccessPolicyResultEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAppliedConditionalAccessPolicyResultValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAppliedConditionalAccessPolicyResult)

- (MSGraphAppliedConditionalAccessPolicyResult*) toMSGraphAppliedConditionalAccessPolicyResult{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphAppliedConditionalAccessPolicyResult success];
    }
    else if([self isEqualToString:@"failure"])
    {
          return [MSGraphAppliedConditionalAccessPolicyResult failure];
    }
    else if([self isEqualToString:@"notApplied"])
    {
          return [MSGraphAppliedConditionalAccessPolicyResult notApplied];
    }
    else if([self isEqualToString:@"notEnabled"])
    {
          return [MSGraphAppliedConditionalAccessPolicyResult notEnabled];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphAppliedConditionalAccessPolicyResult unknown];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAppliedConditionalAccessPolicyResult unknownFutureValue];
    }
    else {
        return [MSGraphAppliedConditionalAccessPolicyResult UnknownEnumValue];
    }
}

@end
