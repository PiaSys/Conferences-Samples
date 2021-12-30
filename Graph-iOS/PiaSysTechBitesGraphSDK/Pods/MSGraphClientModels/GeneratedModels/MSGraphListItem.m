// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphListItem()
{
    MSGraphContentTypeInfo* _contentType;
    MSGraphSharepointIds* _sharepointIds;
    MSGraphItemAnalytics* _analytics;
    MSGraphDriveItem* _driveItem;
    MSGraphFieldValueSet* _fields;
    NSArray* _versions;
}
@end

@implementation MSGraphListItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.listItem";
    }
    return self;
}
- (MSGraphContentTypeInfo*) contentType
{
    if(!_contentType){
        _contentType = [[MSGraphContentTypeInfo alloc] initWithDictionary: self.dictionary[@"contentType"]];
    }
    return _contentType;
}

- (void) setContentType: (MSGraphContentTypeInfo*) val
{
    _contentType = val;
    self.dictionary[@"contentType"] = val;
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

- (MSGraphItemAnalytics*) analytics
{
    if(!_analytics){
        _analytics = [[MSGraphItemAnalytics alloc] initWithDictionary: self.dictionary[@"analytics"]];
    }
    return _analytics;
}

- (void) setAnalytics: (MSGraphItemAnalytics*) val
{
    _analytics = val;
    self.dictionary[@"analytics"] = val;
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

- (MSGraphFieldValueSet*) fields
{
    if(!_fields){
        _fields = [[MSGraphFieldValueSet alloc] initWithDictionary: self.dictionary[@"fields"]];
    }
    return _fields;
}

- (void) setFields: (MSGraphFieldValueSet*) val
{
    _fields = val;
    self.dictionary[@"fields"] = val;
}

- (NSArray*) versions
{
    if(!_versions){
        
    NSMutableArray *versionsResult = [NSMutableArray array];
    NSArray *versions = self.dictionary[@"versions"];

    if ([versions isKindOfClass:[NSArray class]]){
        for (id tempListItemVersion in versions){
            [versionsResult addObject:tempListItemVersion];
        }
    }

    _versions = versionsResult;
        
    }
    return _versions;
}

- (void) setVersions: (NSArray*) val
{
    _versions = val;
    self.dictionary[@"versions"] = val;
}


@end
