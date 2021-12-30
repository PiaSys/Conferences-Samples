// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAlertStatus.h"

@interface MSGraphAlertStatus () {
    MSGraphAlertStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAlertStatusValue enumValue;
@end

@implementation MSGraphAlertStatus

+ (MSGraphAlertStatus*) unknown {
    static MSGraphAlertStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphAlertStatus alloc] init];
        _unknown.enumValue = MSGraphAlertStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphAlertStatus*) newAlert {
    static MSGraphAlertStatus *_newAlert;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _newAlert = [[MSGraphAlertStatus alloc] init];
        _newAlert.enumValue = MSGraphAlertStatusNewAlert;
    });
    return _newAlert;
}
+ (MSGraphAlertStatus*) inProgress {
    static MSGraphAlertStatus *_inProgress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inProgress = [[MSGraphAlertStatus alloc] init];
        _inProgress.enumValue = MSGraphAlertStatusInProgress;
    });
    return _inProgress;
}
+ (MSGraphAlertStatus*) resolved {
    static MSGraphAlertStatus *_resolved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _resolved = [[MSGraphAlertStatus alloc] init];
        _resolved.enumValue = MSGraphAlertStatusResolved;
    });
    return _resolved;
}
+ (MSGraphAlertStatus*) dismissed {
    static MSGraphAlertStatus *_dismissed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dismissed = [[MSGraphAlertStatus alloc] init];
        _dismissed.enumValue = MSGraphAlertStatusDismissed;
    });
    return _dismissed;
}
+ (MSGraphAlertStatus*) unknownFutureValue {
    static MSGraphAlertStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAlertStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphAlertStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAlertStatus*) UnknownEnumValue {
    static MSGraphAlertStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAlertStatus alloc] init];
        _unknownValue.enumValue = MSGraphAlertStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAlertStatus*) alertStatusWithEnumValue:(MSGraphAlertStatusValue)val {

    switch(val)
    {
        case MSGraphAlertStatusUnknown:
            return [MSGraphAlertStatus unknown];
        case MSGraphAlertStatusNewAlert:
            return [MSGraphAlertStatus newAlert];
        case MSGraphAlertStatusInProgress:
            return [MSGraphAlertStatus inProgress];
        case MSGraphAlertStatusResolved:
            return [MSGraphAlertStatus resolved];
        case MSGraphAlertStatusDismissed:
            return [MSGraphAlertStatus dismissed];
        case MSGraphAlertStatusUnknownFutureValue:
            return [MSGraphAlertStatus unknownFutureValue];
        case MSGraphAlertStatusEndOfEnum:
        default:
            return [MSGraphAlertStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAlertStatusUnknown:
            return @"unknown";
        case MSGraphAlertStatusNewAlert:
            return @"newAlert";
        case MSGraphAlertStatusInProgress:
            return @"inProgress";
        case MSGraphAlertStatusResolved:
            return @"resolved";
        case MSGraphAlertStatusDismissed:
            return @"dismissed";
        case MSGraphAlertStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAlertStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAlertStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAlertStatus)

- (MSGraphAlertStatus*) toMSGraphAlertStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphAlertStatus unknown];
    }
    else if([self isEqualToString:@"newAlert"])
    {
          return [MSGraphAlertStatus newAlert];
    }
    else if([self isEqualToString:@"inProgress"])
    {
          return [MSGraphAlertStatus inProgress];
    }
    else if([self isEqualToString:@"resolved"])
    {
          return [MSGraphAlertStatus resolved];
    }
    else if([self isEqualToString:@"dismissed"])
    {
          return [MSGraphAlertStatus dismissed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAlertStatus unknownFutureValue];
    }
    else {
        return [MSGraphAlertStatus UnknownEnumValue];
    }
}

@end
