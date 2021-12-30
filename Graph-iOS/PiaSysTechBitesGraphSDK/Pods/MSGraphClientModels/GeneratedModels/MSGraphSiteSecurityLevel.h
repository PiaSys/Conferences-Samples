// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSiteSecurityLevelValue){

	MSGraphSiteSecurityLevelUserDefined = 0,
	MSGraphSiteSecurityLevelLow = 1,
	MSGraphSiteSecurityLevelMediumLow = 2,
	MSGraphSiteSecurityLevelMedium = 3,
	MSGraphSiteSecurityLevelMediumHigh = 4,
	MSGraphSiteSecurityLevelHigh = 5,
    MSGraphSiteSecurityLevelEndOfEnum
};

@interface MSGraphSiteSecurityLevel : NSObject

+(MSGraphSiteSecurityLevel*) userDefined;
+(MSGraphSiteSecurityLevel*) low;
+(MSGraphSiteSecurityLevel*) mediumLow;
+(MSGraphSiteSecurityLevel*) medium;
+(MSGraphSiteSecurityLevel*) mediumHigh;
+(MSGraphSiteSecurityLevel*) high;

+(MSGraphSiteSecurityLevel*) UnknownEnumValue;

+(MSGraphSiteSecurityLevel*) siteSecurityLevelWithEnumValue:(MSGraphSiteSecurityLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSiteSecurityLevelValue enumValue;

@end


@interface NSString (MSGraphSiteSecurityLevel)

- (MSGraphSiteSecurityLevel*) toMSGraphSiteSecurityLevel;

@end
