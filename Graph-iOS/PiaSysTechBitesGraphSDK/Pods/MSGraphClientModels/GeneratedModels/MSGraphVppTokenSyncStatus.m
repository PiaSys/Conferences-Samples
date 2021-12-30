// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphVppTokenSyncStatus.h"

@interface MSGraphVppTokenSyncStatus () {
    MSGraphVppTokenSyncStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphVppTokenSyncStatusValue enumValue;
@end

@implementation MSGraphVppTokenSyncStatus

+ (MSGraphVppTokenSyncStatus*) none {
    static MSGraphVppTokenSyncStatus *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphVppTokenSyncStatus alloc] init];
        _none.enumValue = MSGraphVppTokenSyncStatusNone;
    });
    return _none;
}
+ (MSGraphVppTokenSyncStatus*) inProgress {
    static MSGraphVppTokenSyncStatus *_inProgress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inProgress = [[MSGraphVppTokenSyncStatus alloc] init];
        _inProgress.enumValue = MSGraphVppTokenSyncStatusInProgress;
    });
    return _inProgress;
}
+ (MSGraphVppTokenSyncStatus*) completed {
    static MSGraphVppTokenSyncStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphVppTokenSyncStatus alloc] init];
        _completed.enumValue = MSGraphVppTokenSyncStatusCompleted;
    });
    return _completed;
}
+ (MSGraphVppTokenSyncStatus*) failed {
    static MSGraphVppTokenSyncStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphVppTokenSyncStatus alloc] init];
        _failed.enumValue = MSGraphVppTokenSyncStatusFailed;
    });
    return _failed;
}

+ (MSGraphVppTokenSyncStatus*) UnknownEnumValue {
    static MSGraphVppTokenSyncStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphVppTokenSyncStatus alloc] init];
        _unknownValue.enumValue = MSGraphVppTokenSyncStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphVppTokenSyncStatus*) vppTokenSyncStatusWithEnumValue:(MSGraphVppTokenSyncStatusValue)val {

    switch(val)
    {
        case MSGraphVppTokenSyncStatusNone:
            return [MSGraphVppTokenSyncStatus none];
        case MSGraphVppTokenSyncStatusInProgress:
            return [MSGraphVppTokenSyncStatus inProgress];
        case MSGraphVppTokenSyncStatusCompleted:
            return [MSGraphVppTokenSyncStatus completed];
        case MSGraphVppTokenSyncStatusFailed:
            return [MSGraphVppTokenSyncStatus failed];
        case MSGraphVppTokenSyncStatusEndOfEnum:
        default:
            return [MSGraphVppTokenSyncStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphVppTokenSyncStatusNone:
            return @"none";
        case MSGraphVppTokenSyncStatusInProgress:
            return @"inProgress";
        case MSGraphVppTokenSyncStatusCompleted:
            return @"completed";
        case MSGraphVppTokenSyncStatusFailed:
            return @"failed";
        case MSGraphVppTokenSyncStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphVppTokenSyncStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphVppTokenSyncStatus)

- (MSGraphVppTokenSyncStatus*) toMSGraphVppTokenSyncStatus{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphVppTokenSyncStatus none];
    }
    else if([self isEqualToString:@"inProgress"])
    {
          return [MSGraphVppTokenSyncStatus inProgress];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphVppTokenSyncStatus completed];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphVppTokenSyncStatus failed];
    }
    else {
        return [MSGraphVppTokenSyncStatus UnknownEnumValue];
    }
}

@end
