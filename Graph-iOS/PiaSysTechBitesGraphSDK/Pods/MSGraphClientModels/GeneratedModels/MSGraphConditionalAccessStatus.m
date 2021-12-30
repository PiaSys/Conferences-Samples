// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessStatus.h"

@interface MSGraphConditionalAccessStatus () {
    MSGraphConditionalAccessStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConditionalAccessStatusValue enumValue;
@end

@implementation MSGraphConditionalAccessStatus

+ (MSGraphConditionalAccessStatus*) success {
    static MSGraphConditionalAccessStatus *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphConditionalAccessStatus alloc] init];
        _success.enumValue = MSGraphConditionalAccessStatusSuccess;
    });
    return _success;
}
+ (MSGraphConditionalAccessStatus*) failure {
    static MSGraphConditionalAccessStatus *_failure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failure = [[MSGraphConditionalAccessStatus alloc] init];
        _failure.enumValue = MSGraphConditionalAccessStatusFailure;
    });
    return _failure;
}
+ (MSGraphConditionalAccessStatus*) notApplied {
    static MSGraphConditionalAccessStatus *_notApplied;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notApplied = [[MSGraphConditionalAccessStatus alloc] init];
        _notApplied.enumValue = MSGraphConditionalAccessStatusNotApplied;
    });
    return _notApplied;
}
+ (MSGraphConditionalAccessStatus*) unknownFutureValue {
    static MSGraphConditionalAccessStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConditionalAccessStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphConditionalAccessStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConditionalAccessStatus*) UnknownEnumValue {
    static MSGraphConditionalAccessStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConditionalAccessStatus alloc] init];
        _unknownValue.enumValue = MSGraphConditionalAccessStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConditionalAccessStatus*) conditionalAccessStatusWithEnumValue:(MSGraphConditionalAccessStatusValue)val {

    switch(val)
    {
        case MSGraphConditionalAccessStatusSuccess:
            return [MSGraphConditionalAccessStatus success];
        case MSGraphConditionalAccessStatusFailure:
            return [MSGraphConditionalAccessStatus failure];
        case MSGraphConditionalAccessStatusNotApplied:
            return [MSGraphConditionalAccessStatus notApplied];
        case MSGraphConditionalAccessStatusUnknownFutureValue:
            return [MSGraphConditionalAccessStatus unknownFutureValue];
        case MSGraphConditionalAccessStatusEndOfEnum:
        default:
            return [MSGraphConditionalAccessStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConditionalAccessStatusSuccess:
            return @"success";
        case MSGraphConditionalAccessStatusFailure:
            return @"failure";
        case MSGraphConditionalAccessStatusNotApplied:
            return @"notApplied";
        case MSGraphConditionalAccessStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConditionalAccessStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConditionalAccessStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConditionalAccessStatus)

- (MSGraphConditionalAccessStatus*) toMSGraphConditionalAccessStatus{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphConditionalAccessStatus success];
    }
    else if([self isEqualToString:@"failure"])
    {
          return [MSGraphConditionalAccessStatus failure];
    }
    else if([self isEqualToString:@"notApplied"])
    {
          return [MSGraphConditionalAccessStatus notApplied];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConditionalAccessStatus unknownFutureValue];
    }
    else {
        return [MSGraphConditionalAccessStatus UnknownEnumValue];
    }
}

@end
