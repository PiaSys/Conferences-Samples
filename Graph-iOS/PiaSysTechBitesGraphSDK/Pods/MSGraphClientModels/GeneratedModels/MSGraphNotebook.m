// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphNotebook()
{
    BOOL _isDefault;
    MSGraphOnenoteUserRole* _userRole;
    BOOL _isShared;
    NSString* _sectionsUrl;
    NSString* _sectionGroupsUrl;
    MSGraphNotebookLinks* _links;
    NSArray* _sections;
    NSArray* _sectionGroups;
}
@end

@implementation MSGraphNotebook

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.notebook";
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

- (MSGraphOnenoteUserRole*) userRole
{
    if(!_userRole){
        _userRole = [self.dictionary[@"userRole"] toMSGraphOnenoteUserRole];
    }
    return _userRole;
}

- (void) setUserRole: (MSGraphOnenoteUserRole*) val
{
    _userRole = val;
    self.dictionary[@"userRole"] = val;
}

- (BOOL) isShared
{
    _isShared = [self.dictionary[@"isShared"] boolValue];
    return _isShared;
}

- (void) setIsShared: (BOOL) val
{
    _isShared = val;
    self.dictionary[@"isShared"] = @(val);
}

- (NSString*) sectionsUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"sectionsUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"sectionsUrl"];
}

- (void) setSectionsUrl: (NSString*) val
{
    self.dictionary[@"sectionsUrl"] = val;
}

- (NSString*) sectionGroupsUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"sectionGroupsUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"sectionGroupsUrl"];
}

- (void) setSectionGroupsUrl: (NSString*) val
{
    self.dictionary[@"sectionGroupsUrl"] = val;
}

- (MSGraphNotebookLinks*) links
{
    if(!_links){
        _links = [[MSGraphNotebookLinks alloc] initWithDictionary: self.dictionary[@"links"]];
    }
    return _links;
}

- (void) setLinks: (MSGraphNotebookLinks*) val
{
    _links = val;
    self.dictionary[@"links"] = val;
}

- (NSArray*) sections
{
    if(!_sections){
        
    NSMutableArray *sectionsResult = [NSMutableArray array];
    NSArray *sections = self.dictionary[@"sections"];

    if ([sections isKindOfClass:[NSArray class]]){
        for (id tempOnenoteSection in sections){
            [sectionsResult addObject:tempOnenoteSection];
        }
    }

    _sections = sectionsResult;
        
    }
    return _sections;
}

- (void) setSections: (NSArray*) val
{
    _sections = val;
    self.dictionary[@"sections"] = val;
}

- (NSArray*) sectionGroups
{
    if(!_sectionGroups){
        
    NSMutableArray *sectionGroupsResult = [NSMutableArray array];
    NSArray *sectionGroups = self.dictionary[@"sectionGroups"];

    if ([sectionGroups isKindOfClass:[NSArray class]]){
        for (id tempSectionGroup in sectionGroups){
            [sectionGroupsResult addObject:tempSectionGroup];
        }
    }

    _sectionGroups = sectionGroupsResult;
        
    }
    return _sectionGroups;
}

- (void) setSectionGroups: (NSArray*) val
{
    _sectionGroups = val;
    self.dictionary[@"sectionGroups"] = val;
}


@end
