// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnenoteSection()
{
    BOOL _isDefault;
    MSGraphSectionLinks* _links;
    NSString* _pagesUrl;
    MSGraphNotebook* _parentNotebook;
    MSGraphSectionGroup* _parentSectionGroup;
    NSArray* _pages;
}
@end

@implementation MSGraphOnenoteSection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.onenoteSection";
    }
    return self;
}
- (BOOL) isDefault
{
    _isDefault = [self.dictionary[@"isDefault"] boolValue];
    return _isDefault;
}

- (void) setIsDefault: (BOOL) val
{
    _isDefault = val;
    self.dictionary[@"isDefault"] = @(val);
}

- (MSGraphSectionLinks*) links
{
    if(!_links){
        _links = [[MSGraphSectionLinks alloc] initWithDictionary: self.dictionary[@"links"]];
    }
    return _links;
}

- (void) setLinks: (MSGraphSectionLinks*) val
{
    _links = val;
    self.dictionary[@"links"] = val;
}

- (NSString*) pagesUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"pagesUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"pagesUrl"];
}

- (void) setPagesUrl: (NSString*) val
{
    self.dictionary[@"pagesUrl"] = val;
}

- (MSGraphNotebook*) parentNotebook
{
    if(!_parentNotebook){
        _parentNotebook = [[MSGraphNotebook alloc] initWithDictionary: self.dictionary[@"parentNotebook"]];
    }
    return _parentNotebook;
}

- (void) setParentNotebook: (MSGraphNotebook*) val
{
    _parentNotebook = val;
    self.dictionary[@"parentNotebook"] = val;
}

- (MSGraphSectionGroup*) parentSectionGroup
{
    if(!_parentSectionGroup){
        _parentSectionGroup = [[MSGraphSectionGroup alloc] initWithDictionary: self.dictionary[@"parentSectionGroup"]];
    }
    return _parentSectionGroup;
}

- (void) setParentSectionGroup: (MSGraphSectionGroup*) val
{
    _parentSectionGroup = val;
    self.dictionary[@"parentSectionGroup"] = val;
}

- (NSArray*) pages
{
    if(!_pages){
        
    NSMutableArray *pagesResult = [NSMutableArray array];
    NSArray *pages = self.dictionary[@"pages"];

    if ([pages isKindOfClass:[NSArray class]]){
        for (id tempOnenotePage in pages){
            [pagesResult addObject:tempOnenotePage];
        }
    }

    _pages = pagesResult;
        
    }
    return _pages;
}

- (void) setPages: (NSArray*) val
{
    _pages = val;
    self.dictionary[@"pages"] = val;
}


@end
