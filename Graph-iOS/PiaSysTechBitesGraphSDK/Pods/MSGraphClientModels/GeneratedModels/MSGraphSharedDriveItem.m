// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharedDriveItem()
{
    MSGraphIdentitySet* _owner;
    MSGraphDriveItem* _driveItem;
    NSArray* _items;
    MSGraphList* _list;
    MSGraphListItem* _listItem;
    MSGraphDriveItem* _root;
    MSGraphSite* _site;
}
@end

@implementation MSGraphSharedDriveItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.sharedDriveItem";
    }
    return self;
}
- (MSGraphIdentitySet*) owner
{
    if(!_owner){
        _owner = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"owner"]];
    }
    return _owner;
}

- (void) setOwner: (MSGraphIdentitySet*) val
{
    _owner = val;
    self.dictionary[@"owner"] = val;
}

- (MSGraphDriveItem*) driveItem
{
    if(!_driveItem){
        _driveItem = [[MSGraphDriveItem alloc] initWithDictionary: self.dictionary[@"driveItem"]];
    }
    return _driveItem;
}

- (void) setDriveItem: (MSGraphDriveItem*) val
{
    _driveItem = val;
    self.dictionary[@"driveItem"] = val;
}

- (NSArray*) items
{
    if(!_items){
        
    NSMutableArray *itemsResult = [NSMutableArray array];
    NSArray *items = self.dictionary[@"items"];

    if ([items isKindOfClass:[NSArray class]]){
        for (id tempDriveItem in items){
            [itemsResult addObject:tempDriveItem];
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

- (MSGraphList*) list
{
    if(!_list){
        _list = [[MSGraphList alloc] initWithDictionary: self.dictionary[@"list"]];
    }
    return _list;
}

- (void) setList: (MSGraphList*) val
{
    _list = val;
    self.dictionary[@"list"] = val;
}

- (MSGraphListItem*) listItem
{
    if(!_listItem){
        _listItem = [[MSGraphListItem alloc] initWithDictionary: self.dictionary[@"listItem"]];
    }
    return _listItem;
}

- (void) setListItem: (MSGraphListItem*) val
{
    _listItem = val;
    self.dictionary[@"listItem"] = val;
}

- (MSGraphDriveItem*) root
{
    if(!_root){
        _root = [[MSGraphDriveItem alloc] initWithDictionary: self.dictionary[@"root"]];
    }
    return _root;
}

- (void) setRoot: (MSGraphDriveItem*) val
{
    _root = val;
    self.dictionary[@"root"] = val;
}

- (MSGraphSite*) site
{
    if(!_site){
        _site = [[MSGraphSite alloc] initWithDictionary: self.dictionary[@"site"]];
    }
    return _site;
}

- (void) setSite: (MSGraphSite*) val
{
    _site = val;
    self.dictionary[@"site"] = val;
}


@end
