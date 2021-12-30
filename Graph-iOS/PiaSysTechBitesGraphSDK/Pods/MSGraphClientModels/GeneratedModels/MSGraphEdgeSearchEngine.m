// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdgeSearchEngine()
{
    MSGraphEdgeSearchEngineType* _edgeSearchEngineType;
}
@end

@implementation MSGraphEdgeSearchEngine

- (MSGraphEdgeSearchEngineType*) edgeSearchEngineType
{
    if(!_edgeSearchEngineType){
        _edgeSearchEngineType = [self.dictionary[@"edgeSearchEngineType"] toMSGraphEdgeSearchEngineType];
    }
    return _edgeSearchEngineType;
}

- (void) setEdgeSearchEngineType: (MSGraphEdgeSearchEngineType*) val
{
    _edgeSearchEngineType = val;
    self.dictionary[@"edgeSearchEngineType"] = val;
}

@end
