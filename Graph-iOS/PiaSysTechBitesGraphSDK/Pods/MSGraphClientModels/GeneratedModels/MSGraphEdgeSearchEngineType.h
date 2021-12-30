// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdgeSearchEngineTypeValue){

	MSGraphEdgeSearchEngineTypeDefault = 0,
	MSGraphEdgeSearchEngineTypeBing = 1,
    MSGraphEdgeSearchEngineTypeEndOfEnum
};

@interface MSGraphEdgeSearchEngineType : NSObject

+(MSGraphEdgeSearchEngineType*) default;
+(MSGraphEdgeSearchEngineType*) bing;

+(MSGraphEdgeSearchEngineType*) UnknownEnumValue;

+(MSGraphEdgeSearchEngineType*) edgeSearchEngineTypeWithEnumValue:(MSGraphEdgeSearchEngineTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdgeSearchEngineTypeValue enumValue;

@end


@interface NSString (MSGraphEdgeSearchEngineType)

- (MSGraphEdgeSearchEngineType*) toMSGraphEdgeSearchEngineType;

@end
