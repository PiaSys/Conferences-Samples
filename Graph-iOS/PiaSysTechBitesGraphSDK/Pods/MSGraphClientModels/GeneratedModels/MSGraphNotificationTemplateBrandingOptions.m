// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphNotificationTemplateBrandingOptions.h"

@interface MSGraphNotificationTemplateBrandingOptions () {
    MSGraphNotificationTemplateBrandingOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphNotificationTemplateBrandingOptionsValue enumValue;
@end

@implementation MSGraphNotificationTemplateBrandingOptions

+ (MSGraphNotificationTemplateBrandingOptions*) none {
    static MSGraphNotificationTemplateBrandingOptions *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphNotificationTemplateBrandingOptions alloc] init];
        _none.enumValue = MSGraphNotificationTemplateBrandingOptionsNone;
    });
    return _none;
}
+ (MSGraphNotificationTemplateBrandingOptions*) includeCompanyLogo {
    static MSGraphNotificationTemplateBrandingOptions *_includeCompanyLogo;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _includeCompanyLogo = [[MSGraphNotificationTemplateBrandingOptions alloc] init];
        _includeCompanyLogo.enumValue = MSGraphNotificationTemplateBrandingOptionsIncludeCompanyLogo;
    });
    return _includeCompanyLogo;
}
+ (MSGraphNotificationTemplateBrandingOptions*) includeCompanyName {
    static MSGraphNotificationTemplateBrandingOptions *_includeCompanyName;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _includeCompanyName = [[MSGraphNotificationTemplateBrandingOptions alloc] init];
        _includeCompanyName.enumValue = MSGraphNotificationTemplateBrandingOptionsIncludeCompanyName;
    });
    return _includeCompanyName;
}
+ (MSGraphNotificationTemplateBrandingOptions*) includeContactInformation {
    static MSGraphNotificationTemplateBrandingOptions *_includeContactInformation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _includeContactInformation = [[MSGraphNotificationTemplateBrandingOptions alloc] init];
        _includeContactInformation.enumValue = MSGraphNotificationTemplateBrandingOptionsIncludeContactInformation;
    });
    return _includeContactInformation;
}

+ (MSGraphNotificationTemplateBrandingOptions*) UnknownEnumValue {
    static MSGraphNotificationTemplateBrandingOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphNotificationTemplateBrandingOptions alloc] init];
        _unknownValue.enumValue = MSGraphNotificationTemplateBrandingOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphNotificationTemplateBrandingOptions*) notificationTemplateBrandingOptionsWithEnumValue:(MSGraphNotificationTemplateBrandingOptionsValue)val {

    switch(val)
    {
        case MSGraphNotificationTemplateBrandingOptionsNone:
            return [MSGraphNotificationTemplateBrandingOptions none];
        case MSGraphNotificationTemplateBrandingOptionsIncludeCompanyLogo:
            return [MSGraphNotificationTemplateBrandingOptions includeCompanyLogo];
        case MSGraphNotificationTemplateBrandingOptionsIncludeCompanyName:
            return [MSGraphNotificationTemplateBrandingOptions includeCompanyName];
        case MSGraphNotificationTemplateBrandingOptionsIncludeContactInformation:
            return [MSGraphNotificationTemplateBrandingOptions includeContactInformation];
        case MSGraphNotificationTemplateBrandingOptionsEndOfEnum:
        default:
            return [MSGraphNotificationTemplateBrandingOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphNotificationTemplateBrandingOptionsNone:
            return @"none";
        case MSGraphNotificationTemplateBrandingOptionsIncludeCompanyLogo:
            return @"includeCompanyLogo";
        case MSGraphNotificationTemplateBrandingOptionsIncludeCompanyName:
            return @"includeCompanyName";
        case MSGraphNotificationTemplateBrandingOptionsIncludeContactInformation:
            return @"includeContactInformation";
        case MSGraphNotificationTemplateBrandingOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphNotificationTemplateBrandingOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphNotificationTemplateBrandingOptions)

- (MSGraphNotificationTemplateBrandingOptions*) toMSGraphNotificationTemplateBrandingOptions{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphNotificationTemplateBrandingOptions none];
    }
    else if([self isEqualToString:@"includeCompanyLogo"])
    {
          return [MSGraphNotificationTemplateBrandingOptions includeCompanyLogo];
    }
    else if([self isEqualToString:@"includeCompanyName"])
    {
          return [MSGraphNotificationTemplateBrandingOptions includeCompanyName];
    }
    else if([self isEqualToString:@"includeContactInformation"])
    {
          return [MSGraphNotificationTemplateBrandingOptions includeContactInformation];
    }
    else {
        return [MSGraphNotificationTemplateBrandingOptions UnknownEnumValue];
    }
}

@end
