// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOperationStatus.h"

@interface MSGraphOperationStatus () {
    MSGraphOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOperationStatusValue enumValue;
@end

@implementation MSGraphOperationStatus

+ (MSGraphOperationStatus*) notStarted {
    static MSGraphOperationStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphOperationStatus alloc] init];
        _notStarted.enumValue = MSGraphOperationStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphOperationStatus*) running {
    static MSGraphOperationStatus *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphOperationStatus alloc] init];
        _running.enumValue = MSGraphOperationStatusRunning;
    });
    return _running;
}
+ (MSGraphOperationStatus*) completed {
    static MSGraphOperationStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphOperationStatus alloc] init];
        _completed.enumValue = MSGraphOperationStatusCompleted;
    });
    return _completed;
}
+ (MSGraphOperationStatus*) failed {
    static MSGraphOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphOperationStatus alloc] init];
        _failed.enumValue = MSGraphOperationStatusFailed;
    });
    return _failed;
}

+ (MSGraphOperationStatus*) UnknownEnumValue {
    static MSGraphOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOperationStatus*) operationStatusWithEnumValue:(MSGraphOperationStatusValue)val {

    switch(val)
    {
        case MSGraphOperationStatusNotStarted:
            return [MSGraphOperationStatus notStarted];
        case MSGraphOperationStatusRunning:
            return [MSGraphOperationStatus running];
        case MSGraphOperationStatusCompleted:
            return [MSGraphOperationStatus completed];
        case MSGraphOperationStatusFailed:
            return [MSGraphOperationStatus failed];
        case MSGraphOperationStatusEndOfEnum:
        default:
            return [MSGraphOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOperationStatusNotStarted:
            return @"NotStarted";
        case MSGraphOperationStatusRunning:
            return @"Running";
        case MSGraphOperationStatusCompleted:
            return @"Completed";
        case MSGraphOperationStatusFailed:
            return @"Failed";
        case MSGraphOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOperationStatus)

- (MSGraphOperationStatus*) toMSGraphOperationStatus{

    if([self isEqualToString:@"NotStarted"])
    {
          return [MSGraphOperationStatus notStarted];
    }
    else if([self isEqualToString:@"Running"])
    {
          return [MSGraphOperationStatus running];
    }
    else if([self isEqualToString:@"Completed"])
    {
          return [MSGraphOperationStatus completed];
    }
    else if([self isEqualToString:@"Failed"])
    {
          return [MSGraphOperationStatus failed];
    }
    else {
        return [MSGraphOperationStatus UnknownEnumValue];
    }
}

@end
