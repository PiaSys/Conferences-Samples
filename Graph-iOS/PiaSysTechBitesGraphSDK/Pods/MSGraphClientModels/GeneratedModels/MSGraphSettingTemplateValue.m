// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSettingTemplateValue()
{
    NSString* _name;
    NSString* _type;
    NSString* _defaultValue;
    NSString* _settingTemplateValueDescription;
}
@end

@implementation MSGraphSettingTemplateValue

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

- (NSString*) defaultValue
{
    if([[NSNull null] isEqual:self.dictionary[@"defaultValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"defaultValue"];
}

- (void) setDefaultValue: (NSString*) val
{
    self.dictionary[@"defaultValue"] = val;
}

- (NSString*) settingTemplateValueDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setSettingTemplateValueDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

@end
