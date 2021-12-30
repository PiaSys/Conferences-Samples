// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphNotificationTemplateBrandingOptionsValue){

	MSGraphNotificationTemplateBrandingOptionsNone = 0,
	MSGraphNotificationTemplateBrandingOptionsIncludeCompanyLogo = 1,
	MSGraphNotificationTemplateBrandingOptionsIncludeCompanyName = 2,
	MSGraphNotificationTemplateBrandingOptionsIncludeContactInformation = 4,
    MSGraphNotificationTemplateBrandingOptionsEndOfEnum
};

@interface MSGraphNotificationTemplateBrandingOptions : NSObject

+(MSGraphNotificationTemplateBrandingOptions*) none;
+(MSGraphNotificationTemplateBrandingOptions*) includeCompanyLogo;
+(MSGraphNotificationTemplateBrandingOptions*) includeCompanyName;
+(MSGraphNotificationTemplateBrandingOptions*) includeContactInformation;

+(MSGraphNotificationTemplateBrandingOptions*) UnknownEnumValue;

+(MSGraphNotificationTemplateBrandingOptions*) notificationTemplateBrandingOptionsWithEnumValue:(MSGraphNotificationTemplateBrandingOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphNotificationTemplateBrandingOptionsValue enumValue;

@end


@interface NSString (MSGraphNotificationTemplateBrandingOptions)

- (MSGraphNotificationTemplateBrandingOptions*) toMSGraphNotificationTemplateBrandingOptions;

@end
