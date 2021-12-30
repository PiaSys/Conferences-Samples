// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFreeBusyStatus.h"

@interface MSGraphFreeBusyStatus () {
    MSGraphFreeBusyStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFreeBusyStatusValue enumValue;
@end

@implementation MSGraphFreeBusyStatus

+ (MSGraphFreeBusyStatus*) unknown {
    static MSGraphFreeBusyStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphFreeBusyStatus alloc] init];
        _unknown.enumValue = MSGraphFreeBusyStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphFreeBusyStatus*) free {
    static MSGraphFreeBusyStatus *_free;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _free = [[MSGraphFreeBusyStatus alloc] init];
        _free.enumValue = MSGraphFreeBusyStatusFree;
    });
    return _free;
}
+ (MSGraphFreeBusyStatus*) tentative {
    static MSGraphFreeBusyStatus *_tentative;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tentative = [[MSGraphFreeBusyStatus alloc] init];
        _tentative.enumValue = MSGraphFreeBusyStatusTentative;
    });
    return _tentative;
}
+ (MSGraphFreeBusyStatus*) busy {
    static MSGraphFreeBusyStatus *_busy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _busy = [[MSGraphFreeBusyStatus alloc] init];
        _busy.enumValue = MSGraphFreeBusyStatusBusy;
    });
    return _busy;
}
+ (MSGraphFreeBusyStatus*) oof {
    static MSGraphFreeBusyStatus *_oof;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oof = [[MSGraphFreeBusyStatus alloc] init];
        _oof.enumValue = MSGraphFreeBusyStatusOof;
    });
    return _oof;
}
+ (MSGraphFreeBusyStatus*) workingElsewhere {
    static MSGraphFreeBusyStatus *_workingElsewhere;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _workingElsewhere = [[MSGraphFreeBusyStatus alloc] init];
        _workingElsewhere.enumValue = MSGraphFreeBusyStatusWorkingElsewhere;
    });
    return _workingElsewhere;
}

+ (MSGraphFreeBusyStatus*) UnknownEnumValue {
    static MSGraphFreeBusyStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFreeBusyStatus alloc] init];
        _unknownValue.enumValue = MSGraphFreeBusyStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFreeBusyStatus*) freeBusyStatusWithEnumValue:(MSGraphFreeBusyStatusValue)val {

    switch(val)
    {
        case MSGraphFreeBusyStatusFree:
            return [MSGraphFreeBusyStatus free];
        case MSGraphFreeBusyStatusTentative:
            return [MSGraphFreeBusyStatus tentative];
        case MSGraphFreeBusyStatusBusy:
            return [MSGraphFreeBusyStatus busy];
        case MSGraphFreeBusyStatusOof:
            return [MSGraphFreeBusyStatus oof];
        case MSGraphFreeBusyStatusWorkingElsewhere:
            return [MSGraphFreeBusyStatus workingElsewhere];
        case MSGraphFreeBusyStatusUnknown:
            return [MSGraphFreeBusyStatus unknown];
        case MSGraphFreeBusyStatusEndOfEnum:
        default:
            return [MSGraphFreeBusyStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFreeBusyStatusFree:
            return @"free";
        case MSGraphFreeBusyStatusTentative:
            return @"tentative";
        case MSGraphFreeBusyStatusBusy:
            return @"busy";
        case MSGraphFreeBusyStatusOof:
            return @"oof";
        case MSGraphFreeBusyStatusWorkingElsewhere:
            return @"workingElsewhere";
        case MSGraphFreeBusyStatusUnknown:
            return @"unknown";
        case MSGraphFreeBusyStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFreeBusyStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFreeBusyStatus)

- (MSGraphFreeBusyStatus*) toMSGraphFreeBusyStatus{

    if([self isEqualToString:@"free"])
    {
          return [MSGraphFreeBusyStatus free];
    }
    else if([self isEqualToString:@"tentative"])
    {
          return [MSGraphFreeBusyStatus tentative];
    }
    else if([self isEqualToString:@"busy"])
    {
          return [MSGraphFreeBusyStatus busy];
    }
    else if([self isEqualToString:@"oof"])
    {
          return [MSGraphFreeBusyStatus oof];
    }
    else if([self isEqualToString:@"workingElsewhere"])
    {
          return [MSGraphFreeBusyStatus workingElsewhere];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphFreeBusyStatus unknown];
    }
    else {
        return [MSGraphFreeBusyStatus UnknownEnumValue];
    }
}

@end
