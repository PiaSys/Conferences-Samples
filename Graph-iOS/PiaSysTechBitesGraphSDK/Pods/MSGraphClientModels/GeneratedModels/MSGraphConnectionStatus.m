// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConnectionStatus.h"

@interface MSGraphConnectionStatus () {
    MSGraphConnectionStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConnectionStatusValue enumValue;
@end

@implementation MSGraphConnectionStatus

+ (MSGraphConnectionStatus*) unknown {
    static MSGraphConnectionStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphConnectionStatus alloc] init];
        _unknown.enumValue = MSGraphConnectionStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphConnectionStatus*) attempted {
    static MSGraphConnectionStatus *_attempted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _attempted = [[MSGraphConnectionStatus alloc] init];
        _attempted.enumValue = MSGraphConnectionStatusAttempted;
    });
    return _attempted;
}
+ (MSGraphConnectionStatus*) succeeded {
    static MSGraphConnectionStatus *_succeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _succeeded = [[MSGraphConnectionStatus alloc] init];
        _succeeded.enumValue = MSGraphConnectionStatusSucceeded;
    });
    return _succeeded;
}
+ (MSGraphConnectionStatus*) blocked {
    static MSGraphConnectionStatus *_blocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blocked = [[MSGraphConnectionStatus alloc] init];
        _blocked.enumValue = MSGraphConnectionStatusBlocked;
    });
    return _blocked;
}
+ (MSGraphConnectionStatus*) failed {
    static MSGraphConnectionStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphConnectionStatus alloc] init];
        _failed.enumValue = MSGraphConnectionStatusFailed;
    });
    return _failed;
}
+ (MSGraphConnectionStatus*) unknownFutureValue {
    static MSGraphConnectionStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConnectionStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphConnectionStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConnectionStatus*) UnknownEnumValue {
    static MSGraphConnectionStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConnectionStatus alloc] init];
        _unknownValue.enumValue = MSGraphConnectionStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConnectionStatus*) connectionStatusWithEnumValue:(MSGraphConnectionStatusValue)val {

    switch(val)
    {
        case MSGraphConnectionStatusUnknown:
            return [MSGraphConnectionStatus unknown];
        case MSGraphConnectionStatusAttempted:
            return [MSGraphConnectionStatus attempted];
        case MSGraphConnectionStatusSucceeded:
            return [MSGraphConnectionStatus succeeded];
        case MSGraphConnectionStatusBlocked:
            return [MSGraphConnectionStatus blocked];
        case MSGraphConnectionStatusFailed:
            return [MSGraphConnectionStatus failed];
        case MSGraphConnectionStatusUnknownFutureValue:
            return [MSGraphConnectionStatus unknownFutureValue];
        case MSGraphConnectionStatusEndOfEnum:
        default:
            return [MSGraphConnectionStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConnectionStatusUnknown:
            return @"unknown";
        case MSGraphConnectionStatusAttempted:
            return @"attempted";
        case MSGraphConnectionStatusSucceeded:
            return @"succeeded";
        case MSGraphConnectionStatusBlocked:
            return @"blocked";
        case MSGraphConnectionStatusFailed:
            return @"failed";
        case MSGraphConnectionStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConnectionStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConnectionStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConnectionStatus)

- (MSGraphConnectionStatus*) toMSGraphConnectionStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphConnectionStatus unknown];
    }
    else if([self isEqualToString:@"attempted"])
    {
          return [MSGraphConnectionStatus attempted];
    }
    else if([self isEqualToString:@"succeeded"])
    {
          return [MSGraphConnectionStatus succeeded];
    }
    else if([self isEqualToString:@"blocked"])
    {
          return [MSGraphConnectionStatus blocked];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphConnectionStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConnectionStatus unknownFutureValue];
    }
    else {
        return [MSGraphConnectionStatus UnknownEnumValue];
    }
}

@end
