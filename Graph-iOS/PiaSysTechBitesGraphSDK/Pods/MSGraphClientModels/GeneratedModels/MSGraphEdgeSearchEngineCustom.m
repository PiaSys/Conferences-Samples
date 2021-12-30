// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdgeSearchEngineCustom()
{
    NSString* _edgeSearchEngineOpenSearchXmlUrl;
}
@end

@implementation MSGraphEdgeSearchEngineCustom

- (NSString*) edgeSearchEngineOpenSearchXmlUrl
{
    return self.dictionary[@"edgeSearchEngineOpenSearchXmlUrl"];
}

- (void) setEdgeSearchEngineOpenSearchXmlUrl: (NSString*) val
{
    self.dictionary[@"edgeSearchEngineOpenSearchXmlUrl"] = val;
}

@end
