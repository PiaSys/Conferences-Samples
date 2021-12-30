// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTrending()
{
    double _weight;
    MSGraphResourceVisualization* _resourceVisualization;
    MSGraphResourceReference* _resourceReference;
    NSDate* _lastModifiedDateTime;
    MSGraphEntity* _resource;
}
@end

@implementation MSGraphTrending

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.trending";
    }
    return self;
}
- (double) weight
{
    _weight = [self.dictionary[@"weight"] floatValue];
    return _weight;
}

- (void) setWeight: (double) val
{
    _weight = val;
    self.dictionary[@"weight"] = @(val);
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

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
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
