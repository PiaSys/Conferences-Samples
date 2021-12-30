// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRejectReason.h"

@interface MSGraphRejectReason () {
    MSGraphRejectReasonValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRejectReasonValue enumValue;
@end

@implementation MSGraphRejectReason

+ (MSGraphRejectReason*) none {
    static MSGraphRejectReason *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphRejectReason alloc] init];
        _none.enumValue = MSGraphRejectReasonNone;
    });
    return _none;
}
+ (MSGraphRejectReason*) busy {
    static MSGraphRejectReason *_busy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _busy = [[MSGraphRejectReason alloc] init];
        _busy.enumValue = MSGraphRejectReasonBusy;
    });
    return _busy;
}
+ (MSGraphRejectReason*) forbidden {
    static MSGraphRejectReason *_forbidden;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _forbidden = [[MSGraphRejectReason alloc] init];
        _forbidden.enumValue = MSGraphRejectReasonForbidden;
    });
    return _forbidden;
}
+ (MSGraphRejectReason*) unknownFutureValue {
    static MSGraphRejectReason *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRejectReason alloc] init];
        _unknownFutureValue.enumValue = MSGraphRejectReasonUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRejectReason*) UnknownEnumValue {
    static MSGraphRejectReason *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRejectReason alloc] init];
        _unknownValue.enumValue = MSGraphRejectReasonEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRejectReason*) rejectReasonWithEnumValue:(MSGraphRejectReasonValue)val {

    switch(val)
    {
        case MSGraphRejectReasonNone:
            return [MSGraphRejectReason none];
        case MSGraphRejectReasonBusy:
            return [MSGraphRejectReason busy];
        case MSGraphRejectReasonForbidden:
            return [MSGraphRejectReason forbidden];
        case MSGraphRejectReasonUnknownFutureValue:
            return [MSGraphRejectReason unknownFutureValue];
        case MSGraphRejectReasonEndOfEnum:
        default:
            return [MSGraphRejectReason UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRejectReasonNone:
            return @"none";
        case MSGraphRejectReasonBusy:
            return @"busy";
        case MSGraphRejectReasonForbidden:
            return @"forbidden";
        case MSGraphRejectReasonUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRejectReasonEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRejectReasonValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRejectReason)

- (MSGraphRejectReason*) toMSGraphRejectReason{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphRejectReason none];
    }
    else if([self isEqualToString:@"busy"])
    {
          return [MSGraphRejectReason busy];
    }
    else if([self isEqualToString:@"forbidden"])
    {
          return [MSGraphRejectReason forbidden];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRejectReason unknownFutureValue];
    }
    else {
        return [MSGraphRejectReason UnknownEnumValue];
    }
}

@end
