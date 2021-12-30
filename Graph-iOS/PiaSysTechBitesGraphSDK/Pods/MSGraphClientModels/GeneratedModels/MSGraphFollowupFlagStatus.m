// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFollowupFlagStatus.h"

@interface MSGraphFollowupFlagStatus () {
    MSGraphFollowupFlagStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFollowupFlagStatusValue enumValue;
@end

@implementation MSGraphFollowupFlagStatus

+ (MSGraphFollowupFlagStatus*) notFlagged {
    static MSGraphFollowupFlagStatus *_notFlagged;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notFlagged = [[MSGraphFollowupFlagStatus alloc] init];
        _notFlagged.enumValue = MSGraphFollowupFlagStatusNotFlagged;
    });
    return _notFlagged;
}
+ (MSGraphFollowupFlagStatus*) complete {
    static MSGraphFollowupFlagStatus *_complete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _complete = [[MSGraphFollowupFlagStatus alloc] init];
        _complete.enumValue = MSGraphFollowupFlagStatusComplete;
    });
    return _complete;
}
+ (MSGraphFollowupFlagStatus*) flagged {
    static MSGraphFollowupFlagStatus *_flagged;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _flagged = [[MSGraphFollowupFlagStatus alloc] init];
        _flagged.enumValue = MSGraphFollowupFlagStatusFlagged;
    });
    return _flagged;
}

+ (MSGraphFollowupFlagStatus*) UnknownEnumValue {
    static MSGraphFollowupFlagStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFollowupFlagStatus alloc] init];
        _unknownValue.enumValue = MSGraphFollowupFlagStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFollowupFlagStatus*) followupFlagStatusWithEnumValue:(MSGraphFollowupFlagStatusValue)val {

    switch(val)
    {
        case MSGraphFollowupFlagStatusNotFlagged:
            return [MSGraphFollowupFlagStatus notFlagged];
        case MSGraphFollowupFlagStatusComplete:
            return [MSGraphFollowupFlagStatus complete];
        case MSGraphFollowupFlagStatusFlagged:
            return [MSGraphFollowupFlagStatus flagged];
        case MSGraphFollowupFlagStatusEndOfEnum:
        default:
            return [MSGraphFollowupFlagStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFollowupFlagStatusNotFlagged:
            return @"notFlagged";
        case MSGraphFollowupFlagStatusComplete:
            return @"complete";
        case MSGraphFollowupFlagStatusFlagged:
            return @"flagged";
        case MSGraphFollowupFlagStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFollowupFlagStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFollowupFlagStatus)

- (MSGraphFollowupFlagStatus*) toMSGraphFollowupFlagStatus{

    if([self isEqualToString:@"notFlagged"])
    {
          return [MSGraphFollowupFlagStatus notFlagged];
    }
    else if([self isEqualToString:@"complete"])
    {
          return [MSGraphFollowupFlagStatus complete];
    }
    else if([self isEqualToString:@"flagged"])
    {
          return [MSGraphFollowupFlagStatus flagged];
    }
    else {
        return [MSGraphFollowupFlagStatus UnknownEnumValue];
    }
}

@end
