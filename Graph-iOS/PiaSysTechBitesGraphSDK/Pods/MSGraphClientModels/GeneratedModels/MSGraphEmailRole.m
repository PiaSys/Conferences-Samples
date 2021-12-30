// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEmailRole.h"

@interface MSGraphEmailRole () {
    MSGraphEmailRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEmailRoleValue enumValue;
@end

@implementation MSGraphEmailRole

+ (MSGraphEmailRole*) unknown {
    static MSGraphEmailRole *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphEmailRole alloc] init];
        _unknown.enumValue = MSGraphEmailRoleUnknown;
    });
    return _unknown;
}
+ (MSGraphEmailRole*) sender {
    static MSGraphEmailRole *_sender;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sender = [[MSGraphEmailRole alloc] init];
        _sender.enumValue = MSGraphEmailRoleSender;
    });
    return _sender;
}
+ (MSGraphEmailRole*) recipient {
    static MSGraphEmailRole *_recipient;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _recipient = [[MSGraphEmailRole alloc] init];
        _recipient.enumValue = MSGraphEmailRoleRecipient;
    });
    return _recipient;
}
+ (MSGraphEmailRole*) unknownFutureValue {
    static MSGraphEmailRole *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEmailRole alloc] init];
        _unknownFutureValue.enumValue = MSGraphEmailRoleUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEmailRole*) UnknownEnumValue {
    static MSGraphEmailRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEmailRole alloc] init];
        _unknownValue.enumValue = MSGraphEmailRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEmailRole*) emailRoleWithEnumValue:(MSGraphEmailRoleValue)val {

    switch(val)
    {
        case MSGraphEmailRoleUnknown:
            return [MSGraphEmailRole unknown];
        case MSGraphEmailRoleSender:
            return [MSGraphEmailRole sender];
        case MSGraphEmailRoleRecipient:
            return [MSGraphEmailRole recipient];
        case MSGraphEmailRoleUnknownFutureValue:
            return [MSGraphEmailRole unknownFutureValue];
        case MSGraphEmailRoleEndOfEnum:
        default:
            return [MSGraphEmailRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEmailRoleUnknown:
            return @"unknown";
        case MSGraphEmailRoleSender:
            return @"sender";
        case MSGraphEmailRoleRecipient:
            return @"recipient";
        case MSGraphEmailRoleUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEmailRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEmailRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEmailRole)

- (MSGraphEmailRole*) toMSGraphEmailRole{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphEmailRole unknown];
    }
    else if([self isEqualToString:@"sender"])
    {
          return [MSGraphEmailRole sender];
    }
    else if([self isEqualToString:@"recipient"])
    {
          return [MSGraphEmailRole recipient];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEmailRole unknownFutureValue];
    }
    else {
        return [MSGraphEmailRole UnknownEnumValue];
    }
}

@end
