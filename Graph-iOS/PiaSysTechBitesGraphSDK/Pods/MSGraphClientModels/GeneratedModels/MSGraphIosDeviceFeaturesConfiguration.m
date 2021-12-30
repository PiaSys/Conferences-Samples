// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosDeviceFeaturesConfiguration()
{
    NSString* _assetTagTemplate;
    NSString* _lockScreenFootnote;
    NSArray* _homeScreenDockIcons;
    NSArray* _homeScreenPages;
    NSArray* _notificationSettings;
}
@end

@implementation MSGraphIosDeviceFeaturesConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosDeviceFeaturesConfiguration";
    }
    return self;
}
- (NSString*) assetTagTemplate
{
    if([[NSNull null] isEqual:self.dictionary[@"assetTagTemplate"]])
    {
        return nil;
    }   
    return self.dictionary[@"assetTagTemplate"];
}

- (void) setAssetTagTemplate: (NSString*) val
{
    self.dictionary[@"assetTagTemplate"] = val;
}

- (NSString*) lockScreenFootnote
{
    if([[NSNull null] isEqual:self.dictionary[@"lockScreenFootnote"]])
    {
        return nil;
    }   
    return self.dictionary[@"lockScreenFootnote"];
}

- (void) setLockScreenFootnote: (NSString*) val
{
    self.dictionary[@"lockScreenFootnote"] = val;
}

- (NSArray*) homeScreenDockIcons
{
    if(!_homeScreenDockIcons){
        
    NSMutableArray *homeScreenDockIconsResult = [NSMutableArray array];
    NSArray *homeScreenDockIcons = self.dictionary[@"homeScreenDockIcons"];

    if ([homeScreenDockIcons isKindOfClass:[NSArray class]]){
        for (id tempIosHomeScreenItem in homeScreenDockIcons){
            [homeScreenDockIconsResult addObject:tempIosHomeScreenItem];
        }
    }

    _homeScreenDockIcons = homeScreenDockIconsResult;
        
    }
    return _homeScreenDockIcons;
}

- (void) setHomeScreenDockIcons: (NSArray*) val
{
    _homeScreenDockIcons = val;
    self.dictionary[@"homeScreenDockIcons"] = val;
}

- (NSArray*) homeScreenPages
{
    if(!_homeScreenPages){
        
    NSMutableArray *homeScreenPagesResult = [NSMutableArray array];
    NSArray *homeScreenPages = self.dictionary[@"homeScreenPages"];

    if ([homeScreenPages isKindOfClass:[NSArray class]]){
        for (id tempIosHomeScreenPage in homeScreenPages){
            [homeScreenPagesResult addObject:tempIosHomeScreenPage];
        }
    }

    _homeScreenPages = homeScreenPagesResult;
        
    }
    return _homeScreenPages;
}

- (void) setHomeScreenPages: (NSArray*) val
{
    _homeScreenPages = val;
    self.dictionary[@"homeScreenPages"] = val;
}

- (NSArray*) notificationSettings
{
    if(!_notificationSettings){
        
    NSMutableArray *notificationSettingsResult = [NSMutableArray array];
    NSArray *notificationSettings = self.dictionary[@"notificationSettings"];

    if ([notificationSettings isKindOfClass:[NSArray class]]){
        for (id tempIosNotificationSettings in notificationSettings){
            [notificationSettingsResult addObject:tempIosNotificationSettings];
        }
    }

    _notificationSettings = notificationSettingsResult;
        
    }
    return _notificationSettings;
}

- (void) setNotificationSettings: (NSArray*) val
{
    _notificationSettings = val;
    self.dictionary[@"notificationSettings"] = val;
}


@end
