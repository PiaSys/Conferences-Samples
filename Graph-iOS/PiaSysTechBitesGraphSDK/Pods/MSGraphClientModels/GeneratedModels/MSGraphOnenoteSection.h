// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSectionLinks, MSGraphNotebook, MSGraphSectionGroup, MSGraphOnenotePage; 


#import "MSGraphOnenoteEntityHierarchyModel.h"

@interface MSGraphOnenoteSection : MSGraphOnenoteEntityHierarchyModel

  @property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
    @property (nullable, nonatomic, setter=setLinks:, getter=links) MSGraphSectionLinks* links;
    @property (nullable, nonatomic, setter=setPagesUrl:, getter=pagesUrl) NSString* pagesUrl;
    @property (nullable, nonatomic, setter=setParentNotebook:, getter=parentNotebook) MSGraphNotebook* parentNotebook;
    @property (nullable, nonatomic, setter=setParentSectionGroup:, getter=parentSectionGroup) MSGraphSectionGroup* parentSectionGroup;
    @property (nullable, nonatomic, setter=setPages:, getter=pages) NSArray* pages;
  
@end
