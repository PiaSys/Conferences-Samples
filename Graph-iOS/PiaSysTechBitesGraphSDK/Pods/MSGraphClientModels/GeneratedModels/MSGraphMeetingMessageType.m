// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMeetingMessageType.h"

@interface MSGraphMeetingMessageType () {
    MSGraphMeetingMessageTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMeetingMessageTypeValue enumValue;
@end

@implementation MSGraphMeetingMessageType

+ (MSGraphMeetingMessageType*) none {
    static MSGraphMeetingMessageType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphMeetingMessageType alloc] init];
        _none.enumValue = MSGraphMeetingMessageTypeNone;
    });
    return _none;
}
+ (MSGraphMeetingMessageType*) meetingRequest {
    static MSGraphMeetingMessageType *_meetingRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meetingRequest = [[MSGraphMeetingMessageType alloc] init];
        _meetingRequest.enumValue = MSGraphMeetingMessageTypeMeetingRequest;
    });
    return _meetingRequest;
}
+ (MSGraphMeetingMessageType*) meetingCancelled {
    static MSGraphMeetingMessageType *_meetingCancelled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meetingCancelled = [[MSGraphMeetingMessageType alloc] init];
        _meetingCancelled.enumValue = MSGraphMeetingMessageTypeMeetingCancelled;
    });
    return _meetingCancelled;
}
+ (MSGraphMeetingMessageType*) meetingAccepted {
    static MSGraphMeetingMessageType *_meetingAccepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meetingAccepted = [[MSGraphMeetingMessageType alloc] init];
        _meetingAccepted.enumValue = MSGraphMeetingMessageTypeMeetingAccepted;
    });
    return _meetingAccepted;
}
+ (MSGraphMeetingMessageType*) meetingTenativelyAccepted {
    static MSGraphMeetingMessageType *_meetingTenativelyAccepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meetingTenativelyAccepted = [[MSGraphMeetingMessageType alloc] init];
        _meetingTenativelyAccepted.enumValue = MSGraphMeetingMessageTypeMeetingTenativelyAccepted;
    });
    return _meetingTenativelyAccepted;
}
+ (MSGraphMeetingMessageType*) meetingDeclined {
    static MSGraphMeetingMessageType *_meetingDeclined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meetingDeclined = [[MSGraphMeetingMessageType alloc] init];
        _meetingDeclined.enumValue = MSGraphMeetingMessageTypeMeetingDeclined;
    });
    return _meetingDeclined;
}

+ (MSGraphMeetingMessageType*) UnknownEnumValue {
    static MSGraphMeetingMessageType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMeetingMessageType alloc] init];
        _unknownValue.enumValue = MSGraphMeetingMessageTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMeetingMessageType*) meetingMessageTypeWithEnumValue:(MSGraphMeetingMessageTypeValue)val {

    switch(val)
    {
        case MSGraphMeetingMessageTypeNone:
            return [MSGraphMeetingMessageType none];
        case MSGraphMeetingMessageTypeMeetingRequest:
            return [MSGraphMeetingMessageType meetingRequest];
        case MSGraphMeetingMessageTypeMeetingCancelled:
            return [MSGraphMeetingMessageType meetingCancelled];
        case MSGraphMeetingMessageTypeMeetingAccepted:
            return [MSGraphMeetingMessageType meetingAccepted];
        case MSGraphMeetingMessageTypeMeetingTenativelyAccepted:
            return [MSGraphMeetingMessageType meetingTenativelyAccepted];
        case MSGraphMeetingMessageTypeMeetingDeclined:
            return [MSGraphMeetingMessageType meetingDeclined];
        case MSGraphMeetingMessageTypeEndOfEnum:
        default:
            return [MSGraphMeetingMessageType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMeetingMessageTypeNone:
            return @"none";
        case MSGraphMeetingMessageTypeMeetingRequest:
            return @"meetingRequest";
        case MSGraphMeetingMessageTypeMeetingCancelled:
            return @"meetingCancelled";
        case MSGraphMeetingMessageTypeMeetingAccepted:
            return @"meetingAccepted";
        case MSGraphMeetingMessageTypeMeetingTenativelyAccepted:
            return @"meetingTenativelyAccepted";
        case MSGraphMeetingMessageTypeMeetingDeclined:
            return @"meetingDeclined";
        case MSGraphMeetingMessageTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMeetingMessageTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMeetingMessageType)

- (MSGraphMeetingMessageType*) toMSGraphMeetingMessageType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphMeetingMessageType none];
    }
    else if([self isEqualToString:@"meetingRequest"])
    {
          return [MSGraphMeetingMessageType meetingRequest];
    }
    else if([self isEqualToString:@"meetingCancelled"])
    {
          return [MSGraphMeetingMessageType meetingCancelled];
    }
    else if([self isEqualToString:@"meetingAccepted"])
    {
          return [MSGraphMeetingMessageType meetingAccepted];
    }
    else if([self isEqualToString:@"meetingTenativelyAccepted"])
    {
          return [MSGraphMeetingMessageType meetingTenativelyAccepted];
    }
    else if([self isEqualToString:@"meetingDeclined"])
    {
          return [MSGraphMeetingMessageType meetingDeclined];
    }
    else {
        return [MSGraphMeetingMessageType UnknownEnumValue];
    }
}

@end
