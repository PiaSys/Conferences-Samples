// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidCustomConfiguration()
{
    NSArray* _omaSettings;
}
@end

@implementation MSGraphAndroidCustomConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.androidCustomConfiguration";
    }
    return self;
}
- (NSArray*) omaSettings
{
    if(!_omaSettings){
        
    NSMutableArray *omaSettingsResult = [NSMutableArray array];
    NSArray *omaSettings = self.dictionary[@"omaSettings"];

    if ([omaSettings isKindOfClass:[NSArray class]]){
        for (id tempOmaSetting in omaSettings){
            [omaSettingsResult addObject:tempOmaSetting];
        }
    }

    _omaSettings = omaSettingsResult;
        
    }
    return _omaSettings;
}

- (void) setOmaSettings: (NSArray*) val
{
    _omaSettings = val;
    self.dictionary[@"omaSettings"] = val;
}


@end
