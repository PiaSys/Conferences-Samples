// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphNotebookLinks, MSGraphOnenoteSection, MSGraphSectionGroup; 
#import "MSGraphOnenoteUserRole.h"


#import "MSGraphOnenoteEntityHierarchyModel.h"

@interface MSGraphNotebook : MSGraphOnenoteEntityHierarchyModel

  @property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
    @property (nullable, nonatomic, setter=setUserRole:, getter=userRole) MSGraphOnenoteUserRole* userRole;
    @property (nonatomic, setter=setIsShared:, getter=isShared) BOOL isShared;
    @property (nullable, nonatomic, setter=setSectionsUrl:, getter=sectionsUrl) NSString* sectionsUrl;
    @property (nullable, nonatomic, setter=setSectionGroupsUrl:, getter=sectionGroupsUrl) NSString* sectionGroupsUrl;
    @property (nullable, nonatomic, setter=setLinks:, getter=links) MSGraphNotebookLinks* links;
    @property (nullable, nonatomic, setter=setSections:, getter=sections) NSArray* sections;
    @property (nullable, nonatomic, setter=setSectionGroups:, getter=sectionGroups) NSArray* sectionGroups;
  
@end
