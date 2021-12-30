// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGroupSetting()
{
    NSString* _displayName;
    NSString* _templateId;
    NSArray* _values;
}
@end

@implementation MSGraphGroupSetting

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.groupSetting";
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

- (NSString*) templateId
{
    if([[NSNull null] isEqual:self.dictionary[@"templateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"templateId"];
}

- (void) setTemplateId: (NSString*) val
{
    self.dictionary[@"templateId"] = val;
}

- (NSArray*) values
{
    if(!_values){
        
    NSMutableArray *valuesResult = [NSMutableArray array];
    NSArray *values = self.dictionary[@"values"];

    if ([values isKindOfClass:[NSArray class]]){
        for (id tempSettingValue in values){
            [valuesResult addObject:tempSettingValue];
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
