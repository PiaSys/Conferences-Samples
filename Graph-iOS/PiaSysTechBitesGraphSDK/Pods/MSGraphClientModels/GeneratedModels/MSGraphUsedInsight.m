// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUsedInsight()
{
    MSGraphUsageDetails* _lastUsed;
    MSGraphResourceVisualization* _resourceVisualization;
    MSGraphResourceReference* _resourceReference;
    MSGraphEntity* _resource;
}
@end

@implementation MSGraphUsedInsight

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.usedInsight";
    }
    return self;
}
- (MSGraphUsageDetails*) lastUsed
{
    if(!_lastUsed){
        _lastUsed = [[MSGraphUsageDetails alloc] initWithDictionary: self.dictionary[@"lastUsed"]];
    }
    return _lastUsed;
}

- (void) setLastUsed: (MSGraphUsageDetails*) val
{
    _lastUsed = val;
    self.dictionary[@"lastUsed"] = val;
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
