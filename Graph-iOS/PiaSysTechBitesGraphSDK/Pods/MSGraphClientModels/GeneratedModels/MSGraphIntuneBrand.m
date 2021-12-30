// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIntuneBrand()
{
    NSString* _displayName;
    NSString* _contactITName;
    NSString* _contactITPhoneNumber;
    NSString* _contactITEmailAddress;
    NSString* _contactITNotes;
    NSString* _privacyUrl;
    NSString* _onlineSupportSiteUrl;
    NSString* _onlineSupportSiteName;
    MSGraphRgbColor* _themeColor;
    BOOL _showLogo;
    MSGraphMimeContent* _lightBackgroundLogo;
    MSGraphMimeContent* _darkBackgroundLogo;
    BOOL _showNameNextToLogo;
    BOOL _showDisplayNameNextToLogo;
}
@end

@implementation MSGraphIntuneBrand

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) contactITName
{
    if([[NSNull null] isEqual:self.dictionary[@"contactITName"]])
    {
        return nil;
    }   
    return self.dictionary[@"contactITName"];
}

- (void) setContactITName: (NSString*) val
{
    self.dictionary[@"contactITName"] = val;
}

- (NSString*) contactITPhoneNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"contactITPhoneNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"contactITPhoneNumber"];
}

- (void) setContactITPhoneNumber: (NSString*) val
{
    self.dictionary[@"contactITPhoneNumber"] = val;
}

- (NSString*) contactITEmailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"contactITEmailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"contactITEmailAddress"];
}

- (void) setContactITEmailAddress: (NSString*) val
{
    self.dictionary[@"contactITEmailAddress"] = val;
}

- (NSString*) contactITNotes
{
    if([[NSNull null] isEqual:self.dictionary[@"contactITNotes"]])
    {
        return nil;
    }   
    return self.dictionary[@"contactITNotes"];
}

- (void) setContactITNotes: (NSString*) val
{
    self.dictionary[@"contactITNotes"] = val;
}

- (NSString*) privacyUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"privacyUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"privacyUrl"];
}

- (void) setPrivacyUrl: (NSString*) val
{
    self.dictionary[@"privacyUrl"] = val;
}

- (NSString*) onlineSupportSiteUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"onlineSupportSiteUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"onlineSupportSiteUrl"];
}

- (void) setOnlineSupportSiteUrl: (NSString*) val
{
    self.dictionary[@"onlineSupportSiteUrl"] = val;
}

- (NSString*) onlineSupportSiteName
{
    if([[NSNull null] isEqual:self.dictionary[@"onlineSupportSiteName"]])
    {
        return nil;
    }   
    return self.dictionary[@"onlineSupportSiteName"];
}

- (void) setOnlineSupportSiteName: (NSString*) val
{
    self.dictionary[@"onlineSupportSiteName"] = val;
}

- (MSGraphRgbColor*) themeColor
{
    if(!_themeColor){
        _themeColor = [[MSGraphRgbColor alloc] initWithDictionary: self.dictionary[@"themeColor"]];
    }
    return _themeColor;
}

- (void) setThemeColor: (MSGraphRgbColor*) val
{
    _themeColor = val;
    self.dictionary[@"themeColor"] = val;
}

- (BOOL) showLogo
{
    _showLogo = [self.dictionary[@"showLogo"] boolValue];
    return _showLogo;
}

- (void) setShowLogo: (BOOL) val
{
    _showLogo = val;
    self.dictionary[@"showLogo"] = @(val);
}

- (MSGraphMimeContent*) lightBackgroundLogo
{
    if(!_lightBackgroundLogo){
        _lightBackgroundLogo = [[MSGraphMimeContent alloc] initWithDictionary: self.dictionary[@"lightBackgroundLogo"]];
    }
    return _lightBackgroundLogo;
}

- (void) setLightBackgroundLogo: (MSGraphMimeContent*) val
{
    _lightBackgroundLogo = val;
    self.dictionary[@"lightBackgroundLogo"] = val;
}

- (MSGraphMimeContent*) darkBackgroundLogo
{
    if(!_darkBackgroundLogo){
        _darkBackgroundLogo = [[MSGraphMimeContent alloc] initWithDictionary: self.dictionary[@"darkBackgroundLogo"]];
    }
    return _darkBackgroundLogo;
}

- (void) setDarkBackgroundLogo: (MSGraphMimeContent*) val
{
    _darkBackgroundLogo = val;
    self.dictionary[@"darkBackgroundLogo"] = val;
}

- (BOOL) showNameNextToLogo
{
    _showNameNextToLogo = [self.dictionary[@"showNameNextToLogo"] boolValue];
    return _showNameNextToLogo;
}

- (void) setShowNameNextToLogo: (BOOL) val
{
    _showNameNextToLogo = val;
    self.dictionary[@"showNameNextToLogo"] = @(val);
}

- (BOOL) showDisplayNameNextToLogo
{
    _showDisplayNameNextToLogo = [self.dictionary[@"showDisplayNameNextToLogo"] boolValue];
    return _showDisplayNameNextToLogo;
}

- (void) setShowDisplayNameNextToLogo: (BOOL) val
{
    _showDisplayNameNextToLogo = val;
    self.dictionary[@"showDisplayNameNextToLogo"] = @(val);
}

@end
