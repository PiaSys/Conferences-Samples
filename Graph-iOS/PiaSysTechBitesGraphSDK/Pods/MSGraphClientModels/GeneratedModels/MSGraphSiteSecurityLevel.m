// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSiteSecurityLevel.h"

@interface MSGraphSiteSecurityLevel () {
    MSGraphSiteSecurityLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSiteSecurityLevelValue enumValue;
@end

@implementation MSGraphSiteSecurityLevel

+ (MSGraphSiteSecurityLevel*) userDefined {
    static MSGraphSiteSecurityLevel *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphSiteSecurityLevel alloc] init];
        _userDefined.enumValue = MSGraphSiteSecurityLevelUserDefined;
    });
    return _userDefined;
}
+ (MSGraphSiteSecurityLevel*) low {
    static MSGraphSiteSecurityLevel *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphSiteSecurityLevel alloc] init];
        _low.enumValue = MSGraphSiteSecurityLevelLow;
    });
    return _low;
}
+ (MSGraphSiteSecurityLevel*) mediumLow {
    static MSGraphSiteSecurityLevel *_mediumLow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediumLow = [[MSGraphSiteSecurityLevel alloc] init];
        _mediumLow.enumValue = MSGraphSiteSecurityLevelMediumLow;
    });
    return _mediumLow;
}
+ (MSGraphSiteSecurityLevel*) medium {
    static MSGraphSiteSecurityLevel *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphSiteSecurityLevel alloc] init];
        _medium.enumValue = MSGraphSiteSecurityLevelMedium;
    });
    return _medium;
}
+ (MSGraphSiteSecurityLevel*) mediumHigh {
    static MSGraphSiteSecurityLevel *_mediumHigh;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediumHigh = [[MSGraphSiteSecurityLevel alloc] init];
        _mediumHigh.enumValue = MSGraphSiteSecurityLevelMediumHigh;
    });
    return _mediumHigh;
}
+ (MSGraphSiteSecurityLevel*) high {
    static MSGraphSiteSecurityLevel *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphSiteSecurityLevel alloc] init];
        _high.enumValue = MSGraphSiteSecurityLevelHigh;
    });
    return _high;
}

+ (MSGraphSiteSecurityLevel*) UnknownEnumValue {
    static MSGraphSiteSecurityLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSiteSecurityLevel alloc] init];
        _unknownValue.enumValue = MSGraphSiteSecurityLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSiteSecurityLevel*) siteSecurityLevelWithEnumValue:(MSGraphSiteSecurityLevelValue)val {

    switch(val)
    {
        case MSGraphSiteSecurityLevelUserDefined:
            return [MSGraphSiteSecurityLevel userDefined];
        case MSGraphSiteSecurityLevelLow:
            return [MSGraphSiteSecurityLevel low];
        case MSGraphSiteSecurityLevelMediumLow:
            return [MSGraphSiteSecurityLevel mediumLow];
        case MSGraphSiteSecurityLevelMedium:
            return [MSGraphSiteSecurityLevel medium];
        case MSGraphSiteSecurityLevelMediumHigh:
            return [MSGraphSiteSecurityLevel mediumHigh];
        case MSGraphSiteSecurityLevelHigh:
            return [MSGraphSiteSecurityLevel high];
        case MSGraphSiteSecurityLevelEndOfEnum:
        default:
            return [MSGraphSiteSecurityLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSiteSecurityLevelUserDefined:
            return @"userDefined";
        case MSGraphSiteSecurityLevelLow:
            return @"low";
        case MSGraphSiteSecurityLevelMediumLow:
            return @"mediumLow";
        case MSGraphSiteSecurityLevelMedium:
            return @"medium";
        case MSGraphSiteSecurityLevelMediumHigh:
            return @"mediumHigh";
        case MSGraphSiteSecurityLevelHigh:
            return @"high";
        case MSGraphSiteSecurityLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSiteSecurityLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSiteSecurityLevel)

- (MSGraphSiteSecurityLevel*) toMSGraphSiteSecurityLevel{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphSiteSecurityLevel userDefined];
    }
    else if([self isEqualToString:@"low"])
    {
          return [MSGraphSiteSecurityLevel low];
    }
    else if([self isEqualToString:@"mediumLow"])
    {
          return [MSGraphSiteSecurityLevel mediumLow];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphSiteSecurityLevel medium];
    }
    else if([self isEqualToString:@"mediumHigh"])
    {
          return [MSGraphSiteSecurityLevel mediumHigh];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphSiteSecurityLevel high];
    }
    else {
        return [MSGraphSiteSecurityLevel UnknownEnumValue];
    }
}

@end
