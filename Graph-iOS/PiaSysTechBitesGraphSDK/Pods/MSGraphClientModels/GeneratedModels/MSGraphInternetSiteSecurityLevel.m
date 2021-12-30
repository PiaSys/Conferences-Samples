// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphInternetSiteSecurityLevel.h"

@interface MSGraphInternetSiteSecurityLevel () {
    MSGraphInternetSiteSecurityLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphInternetSiteSecurityLevelValue enumValue;
@end

@implementation MSGraphInternetSiteSecurityLevel

+ (MSGraphInternetSiteSecurityLevel*) userDefined {
    static MSGraphInternetSiteSecurityLevel *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphInternetSiteSecurityLevel alloc] init];
        _userDefined.enumValue = MSGraphInternetSiteSecurityLevelUserDefined;
    });
    return _userDefined;
}
+ (MSGraphInternetSiteSecurityLevel*) medium {
    static MSGraphInternetSiteSecurityLevel *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphInternetSiteSecurityLevel alloc] init];
        _medium.enumValue = MSGraphInternetSiteSecurityLevelMedium;
    });
    return _medium;
}
+ (MSGraphInternetSiteSecurityLevel*) mediumHigh {
    static MSGraphInternetSiteSecurityLevel *_mediumHigh;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediumHigh = [[MSGraphInternetSiteSecurityLevel alloc] init];
        _mediumHigh.enumValue = MSGraphInternetSiteSecurityLevelMediumHigh;
    });
    return _mediumHigh;
}
+ (MSGraphInternetSiteSecurityLevel*) high {
    static MSGraphInternetSiteSecurityLevel *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphInternetSiteSecurityLevel alloc] init];
        _high.enumValue = MSGraphInternetSiteSecurityLevelHigh;
    });
    return _high;
}

+ (MSGraphInternetSiteSecurityLevel*) UnknownEnumValue {
    static MSGraphInternetSiteSecurityLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphInternetSiteSecurityLevel alloc] init];
        _unknownValue.enumValue = MSGraphInternetSiteSecurityLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphInternetSiteSecurityLevel*) internetSiteSecurityLevelWithEnumValue:(MSGraphInternetSiteSecurityLevelValue)val {

    switch(val)
    {
        case MSGraphInternetSiteSecurityLevelUserDefined:
            return [MSGraphInternetSiteSecurityLevel userDefined];
        case MSGraphInternetSiteSecurityLevelMedium:
            return [MSGraphInternetSiteSecurityLevel medium];
        case MSGraphInternetSiteSecurityLevelMediumHigh:
            return [MSGraphInternetSiteSecurityLevel mediumHigh];
        case MSGraphInternetSiteSecurityLevelHigh:
            return [MSGraphInternetSiteSecurityLevel high];
        case MSGraphInternetSiteSecurityLevelEndOfEnum:
        default:
            return [MSGraphInternetSiteSecurityLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphInternetSiteSecurityLevelUserDefined:
            return @"userDefined";
        case MSGraphInternetSiteSecurityLevelMedium:
            return @"medium";
        case MSGraphInternetSiteSecurityLevelMediumHigh:
            return @"mediumHigh";
        case MSGraphInternetSiteSecurityLevelHigh:
            return @"high";
        case MSGraphInternetSiteSecurityLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphInternetSiteSecurityLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphInternetSiteSecurityLevel)

- (MSGraphInternetSiteSecurityLevel*) toMSGraphInternetSiteSecurityLevel{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphInternetSiteSecurityLevel userDefined];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphInternetSiteSecurityLevel medium];
    }
    else if([self isEqualToString:@"mediumHigh"])
    {
          return [MSGraphInternetSiteSecurityLevel mediumHigh];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphInternetSiteSecurityLevel high];
    }
    else {
        return [MSGraphInternetSiteSecurityLevel UnknownEnumValue];
    }
}

@end
