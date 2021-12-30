// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOperationResult.h"

@interface MSGraphOperationResult () {
    MSGraphOperationResultValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOperationResultValue enumValue;
@end

@implementation MSGraphOperationResult

+ (MSGraphOperationResult*) success {
    static MSGraphOperationResult *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphOperationResult alloc] init];
        _success.enumValue = MSGraphOperationResultSuccess;
    });
    return _success;
}
+ (MSGraphOperationResult*) failure {
    static MSGraphOperationResult *_failure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failure = [[MSGraphOperationResult alloc] init];
        _failure.enumValue = MSGraphOperationResultFailure;
    });
    return _failure;
}
+ (MSGraphOperationResult*) timeout {
    static MSGraphOperationResult *_timeout;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _timeout = [[MSGraphOperationResult alloc] init];
        _timeout.enumValue = MSGraphOperationResultTimeout;
    });
    return _timeout;
}
+ (MSGraphOperationResult*) unknownFutureValue {
    static MSGraphOperationResult *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphOperationResult alloc] init];
        _unknownFutureValue.enumValue = MSGraphOperationResultUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphOperationResult*) UnknownEnumValue {
    static MSGraphOperationResult *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOperationResult alloc] init];
        _unknownValue.enumValue = MSGraphOperationResultEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOperationResult*) operationResultWithEnumValue:(MSGraphOperationResultValue)val {

    switch(val)
    {
        case MSGraphOperationResultSuccess:
            return [MSGraphOperationResult success];
        case MSGraphOperationResultFailure:
            return [MSGraphOperationResult failure];
        case MSGraphOperationResultTimeout:
            return [MSGraphOperationResult timeout];
        case MSGraphOperationResultUnknownFutureValue:
            return [MSGraphOperationResult unknownFutureValue];
        case MSGraphOperationResultEndOfEnum:
        default:
            return [MSGraphOperationResult UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOperationResultSuccess:
            return @"success";
        case MSGraphOperationResultFailure:
            return @"failure";
        case MSGraphOperationResultTimeout:
            return @"timeout";
        case MSGraphOperationResultUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphOperationResultEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOperationResultValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOperationResult)

- (MSGraphOperationResult*) toMSGraphOperationResult{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphOperationResult success];
    }
    else if([self isEqualToString:@"failure"])
    {
          return [MSGraphOperationResult failure];
    }
    else if([self isEqualToString:@"timeout"])
    {
          return [MSGraphOperationResult timeout];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphOperationResult unknownFutureValue];
    }
    else {
        return [MSGraphOperationResult UnknownEnumValue];
    }
}

@end
