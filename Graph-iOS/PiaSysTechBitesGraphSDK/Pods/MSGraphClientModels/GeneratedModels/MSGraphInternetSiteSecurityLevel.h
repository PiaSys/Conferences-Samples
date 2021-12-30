// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphInternetSiteSecurityLevelValue){

	MSGraphInternetSiteSecurityLevelUserDefined = 0,
	MSGraphInternetSiteSecurityLevelMedium = 1,
	MSGraphInternetSiteSecurityLevelMediumHigh = 2,
	MSGraphInternetSiteSecurityLevelHigh = 3,
    MSGraphInternetSiteSecurityLevelEndOfEnum
};

@interface MSGraphInternetSiteSecurityLevel : NSObject

+(MSGraphInternetSiteSecurityLevel*) userDefined;
+(MSGraphInternetSiteSecurityLevel*) medium;
+(MSGraphInternetSiteSecurityLevel*) mediumHigh;
+(MSGraphInternetSiteSecurityLevel*) high;

+(MSGraphInternetSiteSecurityLevel*) UnknownEnumValue;

+(MSGraphInternetSiteSecurityLevel*) internetSiteSecurityLevelWithEnumValue:(MSGraphInternetSiteSecurityLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphInternetSiteSecurityLevelValue enumValue;

@end


@interface NSString (MSGraphInternetSiteSecurityLevel)

- (MSGraphInternetSiteSecurityLevel*) toMSGraphInternetSiteSecurityLevel;

@end
