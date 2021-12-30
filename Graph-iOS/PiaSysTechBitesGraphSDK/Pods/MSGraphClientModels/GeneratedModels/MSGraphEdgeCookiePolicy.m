// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdgeCookiePolicy.h"

@interface MSGraphEdgeCookiePolicy () {
    MSGraphEdgeCookiePolicyValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdgeCookiePolicyValue enumValue;
@end

@implementation MSGraphEdgeCookiePolicy

+ (MSGraphEdgeCookiePolicy*) userDefined {
    static MSGraphEdgeCookiePolicy *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphEdgeCookiePolicy alloc] init];
        _userDefined.enumValue = MSGraphEdgeCookiePolicyUserDefined;
    });
    return _userDefined;
}
+ (MSGraphEdgeCookiePolicy*) allow {
    static MSGraphEdgeCookiePolicy *_allow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allow = [[MSGraphEdgeCookiePolicy alloc] init];
        _allow.enumValue = MSGraphEdgeCookiePolicyAllow;
    });
    return _allow;
}
+ (MSGraphEdgeCookiePolicy*) blockThirdParty {
    static MSGraphEdgeCookiePolicy *_blockThirdParty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockThirdParty = [[MSGraphEdgeCookiePolicy alloc] init];
        _blockThirdParty.enumValue = MSGraphEdgeCookiePolicyBlockThirdParty;
    });
    return _blockThirdParty;
}
+ (MSGraphEdgeCookiePolicy*) blockAll {
    static MSGraphEdgeCookiePolicy *_blockAll;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockAll = [[MSGraphEdgeCookiePolicy alloc] init];
        _blockAll.enumValue = MSGraphEdgeCookiePolicyBlockAll;
    });
    return _blockAll;
}

+ (MSGraphEdgeCookiePolicy*) UnknownEnumValue {
    static MSGraphEdgeCookiePolicy *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdgeCookiePolicy alloc] init];
        _unknownValue.enumValue = MSGraphEdgeCookiePolicyEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdgeCookiePolicy*) edgeCookiePolicyWithEnumValue:(MSGraphEdgeCookiePolicyValue)val {

    switch(val)
    {
        case MSGraphEdgeCookiePolicyUserDefined:
            return [MSGraphEdgeCookiePolicy userDefined];
        case MSGraphEdgeCookiePolicyAllow:
            return [MSGraphEdgeCookiePolicy allow];
        case MSGraphEdgeCookiePolicyBlockThirdParty:
            return [MSGraphEdgeCookiePolicy blockThirdParty];
        case MSGraphEdgeCookiePolicyBlockAll:
            return [MSGraphEdgeCookiePolicy blockAll];
        case MSGraphEdgeCookiePolicyEndOfEnum:
        default:
            return [MSGraphEdgeCookiePolicy UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdgeCookiePolicyUserDefined:
            return @"userDefined";
        case MSGraphEdgeCookiePolicyAllow:
            return @"allow";
        case MSGraphEdgeCookiePolicyBlockThirdParty:
            return @"blockThirdParty";
        case MSGraphEdgeCookiePolicyBlockAll:
            return @"blockAll";
        case MSGraphEdgeCookiePolicyEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdgeCookiePolicyValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdgeCookiePolicy)

- (MSGraphEdgeCookiePolicy*) toMSGraphEdgeCookiePolicy{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphEdgeCookiePolicy userDefined];
    }
    else if([self isEqualToString:@"allow"])
    {
          return [MSGraphEdgeCookiePolicy allow];
    }
    else if([self isEqualToString:@"blockThirdParty"])
    {
          return [MSGraphEdgeCookiePolicy blockThirdParty];
    }
    else if([self isEqualToString:@"blockAll"])
    {
          return [MSGraphEdgeCookiePolicy blockAll];
    }
    else {
        return [MSGraphEdgeCookiePolicy UnknownEnumValue];
    }
}

@end
