// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharedInsight()
{
    MSGraphSharingDetail* _lastShared;
    NSArray* _sharingHistory;
    MSGraphResourceVisualization* _resourceVisualization;
    MSGraphResourceReference* _resourceReference;
    MSGraphEntity* _lastSharedMethod;
    MSGraphEntity* _resource;
}
@end

@implementation MSGraphSharedInsight

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.sharedInsight";
    }
    return self;
}
- (MSGraphSharingDetail*) lastShared
{
    if(!_lastShared){
        _lastShared = [[MSGraphSharingDetail alloc] initWithDictionary: self.dictionary[@"lastShared"]];
    }
    return _lastShared;
}

- (void) setLastShared: (MSGraphSharingDetail*) val
{
    _lastShared = val;
    self.dictionary[@"lastShared"] = val;
}

- (NSArray*) sharingHistory
{
    if(!_sharingHistory){
        
    NSMutableArray *sharingHistoryResult = [NSMutableArray array];
    NSArray *sharingHistory = self.dictionary[@"sharingHistory"];

    if ([sharingHistory isKindOfClass:[NSArray class]]){
        for (id tempSharingDetail in sharingHistory){
            [sharingHistoryResult addObject:tempSharingDetail];
        }
    }

    _sharingHistory = sharingHistoryResult;
        
    }
    return _sharingHistory;
}

- (void) setSharingHistory: (NSArray*) val
{
    _sharingHistory = val;
    self.dictionary[@"sharingHistory"] = val;
}

- (MSGraphResourceVisualization*) resourceVisualization
{
    if(!_resourceVisualization){
        _resourceVisualization = [[MSGraphResourceVisualization alloc] initWithDictionary: self.dictionary[@"resourceVisualization"]];
    }
    return _resourceVisualization;
}

- (void) setResourceVisualization: (MSGraphResourceVisualization*) val
{
    _resourceVisualization = val;
    self.dictionary[@"resourceVisualization"] = val;
}

- (MSGraphResourceReference*) resourceReference
{
    if(!_resourceReference){
        _resourceReference = [[MSGraphResourceReference alloc] initWithDictionary: self.dictionary[@"resourceReference"]];
    }
    return _resourceReference;
}

- (void) setResourceReference: (MSGraphResourceReference*) val
{
    _resourceReference = val;
    self.dictionary[@"resourceReference"] = val;
}

- (MSGraphEntity*) lastSharedMethod
{
    if(!_lastSharedMethod){
        _lastSharedMethod = [[MSGraphEntity alloc] initWithDictionary: self.dictionary[@"lastSharedMethod"]];
    }
    return _lastSharedMethod;
}

- (void) setLastSharedMethod: (MSGraphEntity*) val
{
    _lastSharedMethod = val;
    self.dictionary[@"lastSharedMethod"] = val;
}

- (MSGraphEntity*) resource
{
    if(!_resource){
        _resource = [[MSGraphEntity alloc] initWithDictionary: self.dictionary[@"resource"]];
    }
    return _resource;
}

- (void) setResource: (MSGraphEntity*) val
{
    _resource = val;
    self.dictionary[@"resource"] = val;
}


@end
