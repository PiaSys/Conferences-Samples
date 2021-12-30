// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosMobileAppConfiguration()
{
    NSString* _encodedSettingXml;
    NSArray* _settings;
}
@end

@implementation MSGraphIosMobileAppConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosMobileAppConfiguration";
    }
    return self;
}
- (NSString*) encodedSettingXml
{
    if([[NSNull null] isEqual:self.dictionary[@"encodedSettingXml"]])
    {
        return nil;
    }   
    return self.dictionary[@"encodedSettingXml"];
}

- (void) setEncodedSettingXml: (NSString*) val
{
    self.dictionary[@"encodedSettingXml"] = val;
}

- (NSArray*) settings
{
    if(!_settings){
        
    NSMutableArray *settingsResult = [NSMutableArray array];
    NSArray *settings = self.dictionary[@"settings"];

    if ([settings isKindOfClass:[NSArray class]]){
        for (id tempAppConfigurationSettingItem in settings){
            [settingsResult addObject:tempAppConfigurationSettingItem];
        }
    }

    _settings = settingsResult;
        
    }
    return _settings;
}

- (void) setSettings: (NSArray*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}


@end
