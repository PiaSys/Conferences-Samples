// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookNamedItem()
{
    NSString* _comment;
    NSString* _name;
    NSString* _scope;
    NSString* _type;
    NSDictionary* _value;
    BOOL _visible;
    MSGraphWorkbookWorksheet* _worksheet;
}
@end

@implementation MSGraphWorkbookNamedItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookNamedItem";
    }
    return self;
}
- (NSString*) comment
{
    if([[NSNull null] isEqual:self.dictionary[@"comment"]])
    {
        return nil;
    }   
    return self.dictionary[@"comment"];
}

- (void) setComment: (NSString*) val
{
    self.dictionary[@"comment"] = val;
}

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

- (NSString*) scope
{
    return self.dictionary[@"scope"];
}

- (void) setScope: (NSString*) val
{
    self.dictionary[@"scope"] = val;
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

- (NSDictionary*) value
{
    if(!_value){
        _value = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"value"]];
    }
    return _value;
}

- (void) setValue: (NSDictionary*) val
{
    _value = val;
    self.dictionary[@"value"] = val;
}

- (BOOL) visible
{
    _visible = [self.dictionary[@"visible"] boolValue];
    return _visible;
}

- (void) setVisible: (BOOL) val
{
    _visible = val;
    self.dictionary[@"visible"] = @(val);
}

- (MSGraphWorkbookWorksheet*) worksheet
{
    if(!_worksheet){
        _worksheet = [[MSGraphWorkbookWorksheet alloc] initWithDictionary: self.dictionary[@"worksheet"]];
    }
    return _worksheet;
}

- (void) setWorksheet: (MSGraphWorkbookWorksheet*) val
{
    _worksheet = val;
    self.dictionary[@"worksheet"] = val;
}


@end
