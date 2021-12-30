// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphResponseType.h"

@interface MSGraphResponseType () {
    MSGraphResponseTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphResponseTypeValue enumValue;
@end

@implementation MSGraphResponseType

+ (MSGraphResponseType*) none {
    static MSGraphResponseType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphResponseType alloc] init];
        _none.enumValue = MSGraphResponseTypeNone;
    });
    return _none;
}
+ (MSGraphResponseType*) organizer {
    static MSGraphResponseType *_organizer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organizer = [[MSGraphResponseType alloc] init];
        _organizer.enumValue = MSGraphResponseTypeOrganizer;
    });
    return _organizer;
}
+ (MSGraphResponseType*) tentativelyAccepted {
    static MSGraphResponseType *_tentativelyAccepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tentativelyAccepted = [[MSGraphResponseType alloc] init];
        _tentativelyAccepted.enumValue = MSGraphResponseTypeTentativelyAccepted;
    });
    return _tentativelyAccepted;
}
+ (MSGraphResponseType*) accepted {
    static MSGraphResponseType *_accepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _accepted = [[MSGraphResponseType alloc] init];
        _accepted.enumValue = MSGraphResponseTypeAccepted;
    });
    return _accepted;
}
+ (MSGraphResponseType*) declined {
    static MSGraphResponseType *_declined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _declined = [[MSGraphResponseType alloc] init];
        _declined.enumValue = MSGraphResponseTypeDeclined;
    });
    return _declined;
}
+ (MSGraphResponseType*) notResponded {
    static MSGraphResponseType *_notResponded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notResponded = [[MSGraphResponseType alloc] init];
        _notResponded.enumValue = MSGraphResponseTypeNotResponded;
    });
    return _notResponded;
}

+ (MSGraphResponseType*) UnknownEnumValue {
    static MSGraphResponseType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphResponseType alloc] init];
        _unknownValue.enumValue = MSGraphResponseTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphResponseType*) responseTypeWithEnumValue:(MSGraphResponseTypeValue)val {

    switch(val)
    {
        case MSGraphResponseTypeNone:
            return [MSGraphResponseType none];
        case MSGraphResponseTypeOrganizer:
            return [MSGraphResponseType organizer];
        case MSGraphResponseTypeTentativelyAccepted:
            return [MSGraphResponseType tentativelyAccepted];
        case MSGraphResponseTypeAccepted:
            return [MSGraphResponseType accepted];
        case MSGraphResponseTypeDeclined:
            return [MSGraphResponseType declined];
        case MSGraphResponseTypeNotResponded:
            return [MSGraphResponseType notResponded];
        case MSGraphResponseTypeEndOfEnum:
        default:
            return [MSGraphResponseType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphResponseTypeNone:
            return @"none";
        case MSGraphResponseTypeOrganizer:
            return @"organizer";
        case MSGraphResponseTypeTentativelyAccepted:
            return @"tentativelyAccepted";
        case MSGraphResponseTypeAccepted:
            return @"accepted";
        case MSGraphResponseTypeDeclined:
            return @"declined";
        case MSGraphResponseTypeNotResponded:
            return @"notResponded";
        case MSGraphResponseTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphResponseTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphResponseType)

- (MSGraphResponseType*) toMSGraphResponseType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphResponseType none];
    }
    else if([self isEqualToString:@"organizer"])
    {
          return [MSGraphResponseType organizer];
    }
    else if([self isEqualToString:@"tentativelyAccepted"])
    {
          return [MSGraphResponseType tentativelyAccepted];
    }
    else if([self isEqualToString:@"accepted"])
    {
          return [MSGraphResponseType accepted];
    }
    else if([self isEqualToString:@"declined"])
    {
          return [MSGraphResponseType declined];
    }
    else if([self isEqualToString:@"notResponded"])
    {
          return [MSGraphResponseType notResponded];
    }
    else {
        return [MSGraphResponseType UnknownEnumValue];
    }
}

@end
