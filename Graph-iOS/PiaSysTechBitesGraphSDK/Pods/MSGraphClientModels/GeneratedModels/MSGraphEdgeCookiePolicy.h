// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdgeCookiePolicyValue){

	MSGraphEdgeCookiePolicyUserDefined = 0,
	MSGraphEdgeCookiePolicyAllow = 1,
	MSGraphEdgeCookiePolicyBlockThirdParty = 2,
	MSGraphEdgeCookiePolicyBlockAll = 3,
    MSGraphEdgeCookiePolicyEndOfEnum
};

@interface MSGraphEdgeCookiePolicy : NSObject

+(MSGraphEdgeCookiePolicy*) userDefined;
+(MSGraphEdgeCookiePolicy*) allow;
+(MSGraphEdgeCookiePolicy*) blockThirdParty;
+(MSGraphEdgeCookiePolicy*) blockAll;

+(MSGraphEdgeCookiePolicy*) UnknownEnumValue;

+(MSGraphEdgeCookiePolicy*) edgeCookiePolicyWithEnumValue:(MSGraphEdgeCookiePolicyValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdgeCookiePolicyValue enumValue;

@end


@interface NSString (MSGraphEdgeCookiePolicy)

- (MSGraphEdgeCookiePolicy*) toMSGraphEdgeCookiePolicy;

@end
