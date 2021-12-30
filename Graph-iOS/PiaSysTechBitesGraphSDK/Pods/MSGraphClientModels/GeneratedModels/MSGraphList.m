// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphList()
{
    NSString* _displayName;
    MSGraphListInfo* _list;
    MSGraphSharepointIds* _sharepointIds;
    MSGraphSystemFacet* _system;
    NSArray* _columns;
    NSArray* _contentTypes;
    MSGraphDrive* _drive;
    NSArray* _items;
}
@end

@implementation MSGraphList

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.list";
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

- (MSGraphListInfo*) list
{
    if(!_list){
        _list = [[MSGraphListInfo alloc] initWithDictionary: self.dictionary[@"list"]];
    }
    return _list;
}

- (void) setList: (MSGraphListInfo*) val
{
    _list = val;
    self.dictionary[@"list"] = val;
}

- (MSGraphSharepointIds*) sharepointIds
{
    if(!_sharepointIds){
        _sharepointIds = [[MSGraphSharepointIds alloc] initWithDictionary: self.dictionary[@"sharepointIds"]];
    }
    return _sharepointIds;
}

- (void) setSharepointIds: (MSGraphSharepointIds*) val
{
    _sharepointIds = val;
    self.dictionary[@"sharepointIds"] = val;
}

- (MSGraphSystemFacet*) system
{
    if(!_system){
        _system = [[MSGraphSystemFacet alloc] initWithDictionary: self.dictionary[@"system"]];
    }
    return _system;
}

- (void) setSystem: (MSGraphSystemFacet*) val
{
    _system = val;
    self.dictionary[@"system"] = val;
}

- (NSArray*) columns
{
    if(!_columns){
        
    NSMutableArray *columnsResult = [NSMutableArray array];
    NSArray *columns = self.dictionary[@"columns"];

    if ([columns isKindOfClass:[NSArray class]]){
        for (id tempColumnDefinition in columns){
            [columnsResult addObject:tempColumnDefinition];
        }
    }

    _columns = columnsResult;
        
    }
    return _columns;
}

- (void) setColumns: (NSArray*) val
{
    _columns = val;
    self.dictionary[@"columns"] = val;
}

- (NSArray*) contentTypes
{
    if(!_contentTypes){
        
    NSMutableArray *contentTypesResult = [NSMutableArray array];
    NSArray *contentTypes = self.dictionary[@"contentTypes"];

    if ([contentTypes isKindOfClass:[NSArray class]]){
        for (id tempContentType in contentTypes){
            [contentTypesResult addObject:tempContentType];
        }
    }

    _contentTypes = contentTypesResult;
        
    }
    return _contentTypes;
}

- (void) setContentTypes: (NSArray*) val
{
    _contentTypes = val;
    self.dictionary[@"contentTypes"] = val;
}

- (MSGraphDrive*) drive
{
    if(!_drive){
        _drive = [[MSGraphDrive alloc] initWithDictionary: self.dictionary[@"drive"]];
    }
    return _drive;
}

- (void) setDrive: (MSGraphDrive*) val
{
    _drive = val;
    self.dictionary[@"drive"] = val;
}

- (NSArray*) items
{
    if(!_items){
        
    NSMutableArray *itemsResult = [NSMutableArray array];
    NSArray *items = self.dictionary[@"items"];

    if ([items isKindOfClass:[NSArray class]]){
        for (id tempListItem in items){
            [itemsResult addObject:tempListItem];
        }
    }

    _items = itemsResult;
        
    }
    return _items;
}

- (void) setItems: (NSArray*) val
{
    _items = val;
    self.dictionary[@"items"] = val;
}


@end
