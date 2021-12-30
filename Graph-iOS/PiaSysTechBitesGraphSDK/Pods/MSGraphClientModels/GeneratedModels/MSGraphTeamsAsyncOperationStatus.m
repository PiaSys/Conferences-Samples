// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamsAsyncOperationStatus.h"

@interface MSGraphTeamsAsyncOperationStatus () {
    MSGraphTeamsAsyncOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamsAsyncOperationStatusValue enumValue;
@end

@implementation MSGraphTeamsAsyncOperationStatus

+ (MSGraphTeamsAsyncOperationStatus*) invalid {
    static MSGraphTeamsAsyncOperationStatus *_invalid;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _invalid = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _invalid.enumValue = MSGraphTeamsAsyncOperationStatusInvalid;
    });
    return _invalid;
}
+ (MSGraphTeamsAsyncOperationStatus*) notStarted {
    static MSGraphTeamsAsyncOperationStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _notStarted.enumValue = MSGraphTeamsAsyncOperationStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphTeamsAsyncOperationStatus*) inProgress {
    static MSGraphTeamsAsyncOperationStatus *_inProgress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inProgress = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _inProgress.enumValue = MSGraphTeamsAsyncOperationStatusInProgress;
    });
    return _inProgress;
}
+ (MSGraphTeamsAsyncOperationStatus*) succeeded {
    static MSGraphTeamsAsyncOperationStatus *_succeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _succeeded = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _succeeded.enumValue = MSGraphTeamsAsyncOperationStatusSucceeded;
    });
    return _succeeded;
}
+ (MSGraphTeamsAsyncOperationStatus*) failed {
    static MSGraphTeamsAsyncOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _failed.enumValue = MSGraphTeamsAsyncOperationStatusFailed;
    });
    return _failed;
}
+ (MSGraphTeamsAsyncOperationStatus*) unknownFutureValue {
    static MSGraphTeamsAsyncOperationStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamsAsyncOperationStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamsAsyncOperationStatus*) UnknownEnumValue {
    static MSGraphTeamsAsyncOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamsAsyncOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphTeamsAsyncOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamsAsyncOperationStatus*) teamsAsyncOperationStatusWithEnumValue:(MSGraphTeamsAsyncOperationStatusValue)val {

    switch(val)
    {
        case MSGraphTeamsAsyncOperationStatusInvalid:
            return [MSGraphTeamsAsyncOperationStatus invalid];
        case MSGraphTeamsAsyncOperationStatusNotStarted:
            return [MSGraphTeamsAsyncOperationStatus notStarted];
        case MSGraphTeamsAsyncOperationStatusInProgress:
            return [MSGraphTeamsAsyncOperationStatus inProgress];
        case MSGraphTeamsAsyncOperationStatusSucceeded:
            return [MSGraphTeamsAsyncOperationStatus succeeded];
        case MSGraphTeamsAsyncOperationStatusFailed:
            return [MSGraphTeamsAsyncOperationStatus failed];
        case MSGraphTeamsAsyncOperationStatusUnknownFutureValue:
            return [MSGraphTeamsAsyncOperationStatus unknownFutureValue];
        case MSGraphTeamsAsyncOperationStatusEndOfEnum:
        default:
            return [MSGraphTeamsAsyncOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamsAsyncOperationStatusInvalid:
            return @"invalid";
        case MSGraphTeamsAsyncOperationStatusNotStarted:
            return @"notStarted";
        case MSGraphTeamsAsyncOperationStatusInProgress:
            return @"inProgress";
        case MSGraphTeamsAsyncOperationStatusSucceeded:
            return @"succeeded";
        case MSGraphTeamsAsyncOperationStatusFailed:
            return @"failed";
        case MSGraphTeamsAsyncOperationStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamsAsyncOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamsAsyncOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamsAsyncOperationStatus)

- (MSGraphTeamsAsyncOperationStatus*) toMSGraphTeamsAsyncOperationStatus{

    if([self isEqualToString:@"invalid"])
    {
          return [MSGraphTeamsAsyncOperationStatus invalid];
    }
    else if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphTeamsAsyncOperationStatus notStarted];
    }
    else if([self isEqualToString:@"inProgress"])
    {
          return [MSGraphTeamsAsyncOperationStatus inProgress];
    }
    else if([self isEqualToString:@"succeeded"])
    {
          return [MSGraphTeamsAsyncOperationStatus succeeded];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphTeamsAsyncOperationStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamsAsyncOperationStatus unknownFutureValue];
    }
    else {
        return [MSGraphTeamsAsyncOperationStatus UnknownEnumValue];
    }
}

@end
