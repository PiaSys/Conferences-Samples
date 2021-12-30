// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGroupSettingTemplate()
{
    NSString* _displayName;
    NSString* _groupSettingTemplateDescription;
    NSArray* _values;
}
@end

@implementation MSGraphGroupSettingTemplate

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.groupSettingTemplate";
    }
    return self;
}
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

- (NSString*) groupSettingTemplateDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setGroupSettingTemplateDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) values
{
    if(!_values){
        
    NSMutableArray *valuesResult = [NSMutableArray array];
    NSArray *values = self.dictionary[@"values"];

    if ([values isKindOfClass:[NSArray class]]){
        for (id tempSettingTemplateValue in values){
            [valuesResult addObject:tempSettingTemplateValue];
        }
    }

    _values = valuesResult;
        
    }
    return _values;
}

- (void) setValues: (NSArray*) val
{
    _values = val;
    self.dictionary[@"values"] = val;
}


@end
