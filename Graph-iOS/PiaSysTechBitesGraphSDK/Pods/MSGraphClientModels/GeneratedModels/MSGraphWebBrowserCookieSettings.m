// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWebBrowserCookieSettings.h"

@interface MSGraphWebBrowserCookieSettings () {
    MSGraphWebBrowserCookieSettingsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWebBrowserCookieSettingsValue enumValue;
@end

@implementation MSGraphWebBrowserCookieSettings

+ (MSGraphWebBrowserCookieSettings*) browserDefault {
    static MSGraphWebBrowserCookieSettings *_browserDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _browserDefault = [[MSGraphWebBrowserCookieSettings alloc] init];
        _browserDefault.enumValue = MSGraphWebBrowserCookieSettingsBrowserDefault;
    });
    return _browserDefault;
}
+ (MSGraphWebBrowserCookieSettings*) blockAlways {
    static MSGraphWebBrowserCookieSettings *_blockAlways;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockAlways = [[MSGraphWebBrowserCookieSettings alloc] init];
        _blockAlways.enumValue = MSGraphWebBrowserCookieSettingsBlockAlways;
    });
    return _blockAlways;
}
+ (MSGraphWebBrowserCookieSettings*) allowCurrentWebSite {
    static MSGraphWebBrowserCookieSettings *_allowCurrentWebSite;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowCurrentWebSite = [[MSGraphWebBrowserCookieSettings alloc] init];
        _allowCurrentWebSite.enumValue = MSGraphWebBrowserCookieSettingsAllowCurrentWebSite;
    });
    return _allowCurrentWebSite;
}
+ (MSGraphWebBrowserCookieSettings*) allowFromWebsitesVisited {
    static MSGraphWebBrowserCookieSettings *_allowFromWebsitesVisited;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowFromWebsitesVisited = [[MSGraphWebBrowserCookieSettings alloc] init];
        _allowFromWebsitesVisited.enumValue = MSGraphWebBrowserCookieSettingsAllowFromWebsitesVisited;
    });
    return _allowFromWebsitesVisited;
}
+ (MSGraphWebBrowserCookieSettings*) allowAlways {
    static MSGraphWebBrowserCookieSettings *_allowAlways;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowAlways = [[MSGraphWebBrowserCookieSettings alloc] init];
        _allowAlways.enumValue = MSGraphWebBrowserCookieSettingsAllowAlways;
    });
    return _allowAlways;
}

+ (MSGraphWebBrowserCookieSettings*) UnknownEnumValue {
    static MSGraphWebBrowserCookieSettings *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWebBrowserCookieSettings alloc] init];
        _unknownValue.enumValue = MSGraphWebBrowserCookieSettingsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWebBrowserCookieSettings*) webBrowserCookieSettingsWithEnumValue:(MSGraphWebBrowserCookieSettingsValue)val {

    switch(val)
    {
        case MSGraphWebBrowserCookieSettingsBrowserDefault:
            return [MSGraphWebBrowserCookieSettings browserDefault];
        case MSGraphWebBrowserCookieSettingsBlockAlways:
            return [MSGraphWebBrowserCookieSettings blockAlways];
        case MSGraphWebBrowserCookieSettingsAllowCurrentWebSite:
            return [MSGraphWebBrowserCookieSettings allowCurrentWebSite];
        case MSGraphWebBrowserCookieSettingsAllowFromWebsitesVisited:
            return [MSGraphWebBrowserCookieSettings allowFromWebsitesVisited];
        case MSGraphWebBrowserCookieSettingsAllowAlways:
            return [MSGraphWebBrowserCookieSettings allowAlways];
        case MSGraphWebBrowserCookieSettingsEndOfEnum:
        default:
            return [MSGraphWebBrowserCookieSettings UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWebBrowserCookieSettingsBrowserDefault:
            return @"browserDefault";
        case MSGraphWebBrowserCookieSettingsBlockAlways:
            return @"blockAlways";
        case MSGraphWebBrowserCookieSettingsAllowCurrentWebSite:
            return @"allowCurrentWebSite";
        case MSGraphWebBrowserCookieSettingsAllowFromWebsitesVisited:
            return @"allowFromWebsitesVisited";
        case MSGraphWebBrowserCookieSettingsAllowAlways:
            return @"allowAlways";
        case MSGraphWebBrowserCookieSettingsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWebBrowserCookieSettingsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWebBrowserCookieSettings)

- (MSGraphWebBrowserCookieSettings*) toMSGraphWebBrowserCookieSettings{

    if([self isEqualToString:@"browserDefault"])
    {
          return [MSGraphWebBrowserCookieSettings browserDefault];
    }
    else if([self isEqualToString:@"blockAlways"])
    {
          return [MSGraphWebBrowserCookieSettings blockAlways];
    }
    else if([self isEqualToString:@"allowCurrentWebSite"])
    {
          return [MSGraphWebBrowserCookieSettings allowCurrentWebSite];
    }
    else if([self isEqualToString:@"allowFromWebsitesVisited"])
    {
          return [MSGraphWebBrowserCookieSettings allowFromWebsitesVisited];
    }
    else if([self isEqualToString:@"allowAlways"])
    {
          return [MSGraphWebBrowserCookieSettings allowAlways];
    }
    else {
        return [MSGraphWebBrowserCookieSettings UnknownEnumValue];
    }
}

@end
