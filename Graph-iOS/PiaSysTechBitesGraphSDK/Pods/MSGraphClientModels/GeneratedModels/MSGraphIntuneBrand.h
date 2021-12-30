// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphRgbColor, MSGraphMimeContent; 


#import "MSObject.h"

@interface MSGraphIntuneBrand : MSObject

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setContactITName:, getter=contactITName) NSString* contactITName;
@property (nullable, nonatomic, setter=setContactITPhoneNumber:, getter=contactITPhoneNumber) NSString* contactITPhoneNumber;
@property (nullable, nonatomic, setter=setContactITEmailAddress:, getter=contactITEmailAddress) NSString* contactITEmailAddress;
@property (nullable, nonatomic, setter=setContactITNotes:, getter=contactITNotes) NSString* contactITNotes;
@property (nullable, nonatomic, setter=setPrivacyUrl:, getter=privacyUrl) NSString* privacyUrl;
@property (nullable, nonatomic, setter=setOnlineSupportSiteUrl:, getter=onlineSupportSiteUrl) NSString* onlineSupportSiteUrl;
@property (nullable, nonatomic, setter=setOnlineSupportSiteName:, getter=onlineSupportSiteName) NSString* onlineSupportSiteName;
@property (nullable, nonatomic, setter=setThemeColor:, getter=themeColor) MSGraphRgbColor* themeColor;
@property (nonatomic, setter=setShowLogo:, getter=showLogo) BOOL showLogo;
@property (nullable, nonatomic, setter=setLightBackgroundLogo:, getter=lightBackgroundLogo) MSGraphMimeContent* lightBackgroundLogo;
@property (nullable, nonatomic, setter=setDarkBackgroundLogo:, getter=darkBackgroundLogo) MSGraphMimeContent* darkBackgroundLogo;
@property (nonatomic, setter=setShowNameNextToLogo:, getter=showNameNextToLogo) BOOL showNameNextToLogo;
@property (nonatomic, setter=setShowDisplayNameNextToLogo:, getter=showDisplayNameNextToLogo) BOOL showDisplayNameNextToLogo;

@end
