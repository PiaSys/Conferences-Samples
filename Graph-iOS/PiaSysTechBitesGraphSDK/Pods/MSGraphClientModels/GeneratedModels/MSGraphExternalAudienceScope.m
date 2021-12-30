// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalAudienceScope.h"

@interface MSGraphExternalAudienceScope () {
    MSGraphExternalAudienceScopeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalAudienceScopeValue enumValue;
@end

@implementation MSGraphExternalAudienceScope

+ (MSGraphExternalAudienceScope*) none {
    static MSGraphExternalAudienceScope *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphExternalAudienceScope alloc] init];
        _none.enumValue = MSGraphExternalAudienceScopeNone;
    });
    return _none;
}
+ (MSGraphExternalAudienceScope*) contactsOnly {
    static MSGraphExternalAudienceScope *_contactsOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contactsOnly = [[MSGraphExternalAudienceScope alloc] init];
        _contactsOnly.enumValue = MSGraphExternalAudienceScopeContactsOnly;
    });
    return _contactsOnly;
}
+ (MSGraphExternalAudienceScope*) all {
    static MSGraphExternalAudienceScope *_all;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _all = [[MSGraphExternalAudienceScope alloc] init];
        _all.enumValue = MSGraphExternalAudienceScopeAll;
    });
    return _all;
}

+ (MSGraphExternalAudienceScope*) UnknownEnumValue {
    static MSGraphExternalAudienceScope *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalAudienceScope alloc] init];
        _unknownValue.enumValue = MSGraphExternalAudienceScopeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalAudienceScope*) externalAudienceScopeWithEnumValue:(MSGraphExternalAudienceScopeValue)val {

    switch(val)
    {
        case MSGraphExternalAudienceScopeNone:
            return [MSGraphExternalAudienceScope none];
        case MSGraphExternalAudienceScopeContactsOnly:
            return [MSGraphExternalAudienceScope contactsOnly];
        case MSGraphExternalAudienceScopeAll:
            return [MSGraphExternalAudienceScope all];
        case MSGraphExternalAudienceScopeEndOfEnum:
        default:
            return [MSGraphExternalAudienceScope UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalAudienceScopeNone:
            return @"none";
        case MSGraphExternalAudienceScopeContactsOnly:
            return @"contactsOnly";
        case MSGraphExternalAudienceScopeAll:
            return @"all";
        case MSGraphExternalAudienceScopeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalAudienceScopeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalAudienceScope)

- (MSGraphExternalAudienceScope*) toMSGraphExternalAudienceScope{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphExternalAudienceScope none];
    }
    else if([self isEqualToString:@"contactsOnly"])
    {
          return [MSGraphExternalAudienceScope contactsOnly];
    }
    else if([self isEqualToString:@"all"])
    {
          return [MSGraphExternalAudienceScope all];
    }
    else {
        return [MSGraphExternalAudienceScope UnknownEnumValue];
    }
}

@end
