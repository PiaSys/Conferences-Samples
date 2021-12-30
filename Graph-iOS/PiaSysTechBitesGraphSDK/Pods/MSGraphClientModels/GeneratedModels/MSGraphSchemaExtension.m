// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSchemaExtension()
{
    NSString* _schemaExtensionDescription;
    NSArray* _targetTypes;
    NSArray* _properties;
    NSString* _status;
    NSString* _owner;
}
@end

@implementation MSGraphSchemaExtension

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.schemaExtension";
    }
    return self;
}
- (NSString*) schemaExtensionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setSchemaExtensionDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) targetTypes
{
    return self.dictionary[@"targetTypes"];
}

- (void) setTargetTypes: (NSArray*) val
{
    self.dictionary[@"targetTypes"] = val;
}

- (NSArray*) properties
{
    if(!_properties){
        
    NSMutableArray *propertiesResult = [NSMutableArray array];
    NSArray *properties = self.dictionary[@"properties"];

    if ([properties isKindOfClass:[NSArray class]]){
        for (id tempExtensionSchemaProperty in properties){
            [propertiesResult addObject:tempExtensionSchemaProperty];
        }
    }

    _properties = propertiesResult;
        
    }
    return _properties;
}

- (void) setProperties: (NSArray*) val
{
    _properties = val;
    self.dictionary[@"properties"] = val;
}

- (NSString*) status
{
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}

- (NSString*) owner
{
    return self.dictionary[@"owner"];
}

- (void) setOwner: (NSString*) val
{
    self.dictionary[@"owner"] = val;
}


@end
