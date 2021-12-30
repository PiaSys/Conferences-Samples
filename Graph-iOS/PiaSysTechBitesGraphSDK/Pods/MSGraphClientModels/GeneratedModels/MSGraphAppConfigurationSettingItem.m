// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppConfigurationSettingItem()
{
    NSString* _appConfigKey;
    MSGraphMdmAppConfigKeyType* _appConfigKeyType;
    NSString* _appConfigKeyValue;
}
@end

@implementation MSGraphAppConfigurationSettingItem

- (NSString*) appConfigKey
{
    return self.dictionary[@"appConfigKey"];
}

- (void) setAppConfigKey: (NSString*) val
{
    self.dictionary[@"appConfigKey"] = val;
}

- (MSGraphMdmAppConfigKeyType*) appConfigKeyType
{
    if(!_appConfigKeyType){
        _appConfigKeyType = [self.dictionary[@"appConfigKeyType"] toMSGraphMdmAppConfigKeyType];
    }
    return _appConfigKeyType;
}

- (void) setAppConfigKeyType: (MSGraphMdmAppConfigKeyType*) val
{
    _appConfigKeyType = val;
    self.dictionary[@"appConfigKeyType"] = val;
}

- (NSString*) appConfigKeyValue
{
    return self.dictionary[@"appConfigKeyValue"];
}

- (void) setAppConfigKeyValue: (NSString*) val
{
    self.dictionary[@"appConfigKeyValue"] = val;
}

@end
