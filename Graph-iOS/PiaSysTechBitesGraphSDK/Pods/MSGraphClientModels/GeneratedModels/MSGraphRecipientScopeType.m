// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRecipientScopeType.h"

@interface MSGraphRecipientScopeType () {
    MSGraphRecipientScopeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRecipientScopeTypeValue enumValue;
@end

@implementation MSGraphRecipientScopeType

+ (MSGraphRecipientScopeType*) none {
    static MSGraphRecipientScopeType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphRecipientScopeType alloc] init];
        _none.enumValue = MSGraphRecipientScopeTypeNone;
    });
    return _none;
}
+ (MSGraphRecipientScopeType*) internal {
    static MSGraphRecipientScopeType *_internal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _internal = [[MSGraphRecipientScopeType alloc] init];
        _internal.enumValue = MSGraphRecipientScopeTypeInternal;
    });
    return _internal;
}
+ (MSGraphRecipientScopeType*) external {
    static MSGraphRecipientScopeType *_external;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _external = [[MSGraphRecipientScopeType alloc] init];
        _external.enumValue = MSGraphRecipientScopeTypeExternal;
    });
    return _external;
}
+ (MSGraphRecipientScopeType*) externalPartner {
    static MSGraphRecipientScopeType *_externalPartner;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalPartner = [[MSGraphRecipientScopeType alloc] init];
        _externalPartner.enumValue = MSGraphRecipientScopeTypeExternalPartner;
    });
    return _externalPartner;
}
+ (MSGraphRecipientScopeType*) externalNonPartner {
    static MSGraphRecipientScopeType *_externalNonPartner;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalNonPartner = [[MSGraphRecipientScopeType alloc] init];
        _externalNonPartner.enumValue = MSGraphRecipientScopeTypeExternalNonPartner;
    });
    return _externalNonPartner;
}

+ (MSGraphRecipientScopeType*) UnknownEnumValue {
    static MSGraphRecipientScopeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRecipientScopeType alloc] init];
        _unknownValue.enumValue = MSGraphRecipientScopeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRecipientScopeType*) recipientScopeTypeWithEnumValue:(MSGraphRecipientScopeTypeValue)val {

    switch(val)
    {
        case MSGraphRecipientScopeTypeNone:
            return [MSGraphRecipientScopeType none];
        case MSGraphRecipientScopeTypeInternal:
            return [MSGraphRecipientScopeType internal];
        case MSGraphRecipientScopeTypeExternal:
            return [MSGraphRecipientScopeType external];
        case MSGraphRecipientScopeTypeExternalPartner:
            return [MSGraphRecipientScopeType externalPartner];
        case MSGraphRecipientScopeTypeExternalNonPartner:
            return [MSGraphRecipientScopeType externalNonPartner];
        case MSGraphRecipientScopeTypeEndOfEnum:
        default:
            return [MSGraphRecipientScopeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRecipientScopeTypeNone:
            return @"none";
        case MSGraphRecipientScopeTypeInternal:
            return @"internal";
        case MSGraphRecipientScopeTypeExternal:
            return @"external";
        case MSGraphRecipientScopeTypeExternalPartner:
            return @"externalPartner";
        case MSGraphRecipientScopeTypeExternalNonPartner:
            return @"externalNonPartner";
        case MSGraphRecipientScopeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRecipientScopeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRecipientScopeType)

- (MSGraphRecipientScopeType*) toMSGraphRecipientScopeType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphRecipientScopeType none];
    }
    else if([self isEqualToString:@"internal"])
    {
          return [MSGraphRecipientScopeType internal];
    }
    else if([self isEqualToString:@"external"])
    {
          return [MSGraphRecipientScopeType external];
    }
    else if([self isEqualToString:@"externalPartner"])
    {
          return [MSGraphRecipientScopeType externalPartner];
    }
    else if([self isEqualToString:@"externalNonPartner"])
    {
          return [MSGraphRecipientScopeType externalNonPartner];
    }
    else {
        return [MSGraphRecipientScopeType UnknownEnumValue];
    }
}

@end
