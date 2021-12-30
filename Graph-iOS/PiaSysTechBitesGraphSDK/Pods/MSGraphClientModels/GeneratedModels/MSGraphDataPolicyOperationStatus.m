// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDataPolicyOperationStatus.h"

@interface MSGraphDataPolicyOperationStatus () {
    MSGraphDataPolicyOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDataPolicyOperationStatusValue enumValue;
@end

@implementation MSGraphDataPolicyOperationStatus

+ (MSGraphDataPolicyOperationStatus*) notStarted {
    static MSGraphDataPolicyOperationStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphDataPolicyOperationStatus alloc] init];
        _notStarted.enumValue = MSGraphDataPolicyOperationStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphDataPolicyOperationStatus*) running {
    static MSGraphDataPolicyOperationStatus *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphDataPolicyOperationStatus alloc] init];
        _running.enumValue = MSGraphDataPolicyOperationStatusRunning;
    });
    return _running;
}
+ (MSGraphDataPolicyOperationStatus*) complete {
    static MSGraphDataPolicyOperationStatus *_complete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _complete = [[MSGraphDataPolicyOperationStatus alloc] init];
        _complete.enumValue = MSGraphDataPolicyOperationStatusComplete;
    });
    return _complete;
}
+ (MSGraphDataPolicyOperationStatus*) failed {
    static MSGraphDataPolicyOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphDataPolicyOperationStatus alloc] init];
        _failed.enumValue = MSGraphDataPolicyOperationStatusFailed;
    });
    return _failed;
}
+ (MSGraphDataPolicyOperationStatus*) unknownFutureValue {
    static MSGraphDataPolicyOperationStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphDataPolicyOperationStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphDataPolicyOperationStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphDataPolicyOperationStatus*) UnknownEnumValue {
    static MSGraphDataPolicyOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDataPolicyOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphDataPolicyOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDataPolicyOperationStatus*) dataPolicyOperationStatusWithEnumValue:(MSGraphDataPolicyOperationStatusValue)val {

    switch(val)
    {
        case MSGraphDataPolicyOperationStatusNotStarted:
            return [MSGraphDataPolicyOperationStatus notStarted];
        case MSGraphDataPolicyOperationStatusRunning:
            return [MSGraphDataPolicyOperationStatus running];
        case MSGraphDataPolicyOperationStatusComplete:
            return [MSGraphDataPolicyOperationStatus complete];
        case MSGraphDataPolicyOperationStatusFailed:
            return [MSGraphDataPolicyOperationStatus failed];
        case MSGraphDataPolicyOperationStatusUnknownFutureValue:
            return [MSGraphDataPolicyOperationStatus unknownFutureValue];
        case MSGraphDataPolicyOperationStatusEndOfEnum:
        default:
            return [MSGraphDataPolicyOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDataPolicyOperationStatusNotStarted:
            return @"notStarted";
        case MSGraphDataPolicyOperationStatusRunning:
            return @"running";
        case MSGraphDataPolicyOperationStatusComplete:
            return @"complete";
        case MSGraphDataPolicyOperationStatusFailed:
            return @"failed";
        case MSGraphDataPolicyOperationStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphDataPolicyOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDataPolicyOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDataPolicyOperationStatus)

- (MSGraphDataPolicyOperationStatus*) toMSGraphDataPolicyOperationStatus{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphDataPolicyOperationStatus notStarted];
    }
    else if([self isEqualToString:@"running"])
    {
          return [MSGraphDataPolicyOperationStatus running];
    }
    else if([self isEqualToString:@"complete"])
    {
          return [MSGraphDataPolicyOperationStatus complete];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphDataPolicyOperationStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphDataPolicyOperationStatus unknownFutureValue];
    }
    else {
        return [MSGraphDataPolicyOperationStatus UnknownEnumValue];
    }
}

@end
