// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWebBrowserCookieSettingsValue){

	MSGraphWebBrowserCookieSettingsBrowserDefault = 0,
	MSGraphWebBrowserCookieSettingsBlockAlways = 1,
	MSGraphWebBrowserCookieSettingsAllowCurrentWebSite = 2,
	MSGraphWebBrowserCookieSettingsAllowFromWebsitesVisited = 3,
	MSGraphWebBrowserCookieSettingsAllowAlways = 4,
    MSGraphWebBrowserCookieSettingsEndOfEnum
};

@interface MSGraphWebBrowserCookieSettings : NSObject

+(MSGraphWebBrowserCookieSettings*) browserDefault;
+(MSGraphWebBrowserCookieSettings*) blockAlways;
+(MSGraphWebBrowserCookieSettings*) allowCurrentWebSite;
+(MSGraphWebBrowserCookieSettings*) allowFromWebsitesVisited;
+(MSGraphWebBrowserCookieSettings*) allowAlways;

+(MSGraphWebBrowserCookieSettings*) UnknownEnumValue;

+(MSGraphWebBrowserCookieSettings*) webBrowserCookieSettingsWithEnumValue:(MSGraphWebBrowserCookieSettingsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWebBrowserCookieSettingsValue enumValue;

@end


@interface NSString (MSGraphWebBrowserCookieSettings)

- (MSGraphWebBrowserCookieSettings*) toMSGraphWebBrowserCookieSettings;

@end
