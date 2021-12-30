// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDrive()
{
    NSString* _driveType;
    MSGraphIdentitySet* _owner;
    MSGraphQuota* _quota;
    MSGraphSharepointIds* _sharePointIds;
    MSGraphSystemFacet* _system;
    NSArray* _items;
    MSGraphList* _list;
    MSGraphDriveItem* _root;
    NSArray* _special;
}
@end

@implementation MSGraphDrive

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.drive";
    }
    return self;
}
- (NSString*) driveType
{
    if([[NSNull null] isEqual:self.dictionary[@"driveType"]])
    {
        return nil;
    }   
    return self.dictionary[@"driveType"];
}

- (void) setDriveType: (NSString*) val
{
    self.dictionary[@"driveType"] = val;
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

- (MSGraphQuota*) quota
{
    if(!_quota){
        _quota = [[MSGraphQuota alloc] initWithDictionary: self.dictionary[@"quota"]];
    }
    return _quota;
}

- (void) setQuota: (MSGraphQuota*) val
{
    _quota = val;
    self.dictionary[@"quota"] = val;
}

- (MSGraphSharepointIds*) sharePointIds
{
    if(!_sharePointIds){
        _sharePointIds = [[MSGraphSharepointIds alloc] initWithDictionary: self.dictionary[@"sharePointIds"]];
    }
    return _sharePointIds;
}

- (void) setSharePointIds: (MSGraphSharepointIds*) val
{
    _sharePointIds = val;
    self.dictionary[@"sharePointIds"] = val;
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

- (NSArray*) special
{
    if(!_special){
        
    NSMutableArray *specialResult = [NSMutableArray array];
    NSArray *special = self.dictionary[@"special"];

    if ([special isKindOfClass:[NSArray class]]){
        for (id tempDriveItem in special){
            [specialResult addObject:tempDriveItem];
        }
    }

    _special = specialResult;
        
    }
    return _special;
}

- (void) setSpecial: (NSArray*) val
{
    _special = val;
    self.dictionary[@"special"] = val;
}


@end
