// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdgeSearchEngineType.h"


#import "MSGraphEdgeSearchEngineBase.h"

@interface MSGraphEdgeSearchEngine : MSGraphEdgeSearchEngineBase

@property (nonnull, nonatomic, setter=setEdgeSearchEngineType:, getter=edgeSearchEngineType) MSGraphEdgeSearchEngineType* edgeSearchEngineType;

@end
