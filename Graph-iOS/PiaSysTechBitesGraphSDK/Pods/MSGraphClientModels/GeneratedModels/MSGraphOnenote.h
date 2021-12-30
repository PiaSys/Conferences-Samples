// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphNotebook, MSGraphOnenoteSection, MSGraphSectionGroup, MSGraphOnenotePage, MSGraphOnenoteResource, MSGraphOnenoteOperation; 


#import "MSGraphEntity.h"

@interface MSGraphOnenote : MSGraphEntity

  @property (nullable, nonatomic, setter=setNotebooks:, getter=notebooks) NSArray* notebooks;
    @property (nullable, nonatomic, setter=setSections:, getter=sections) NSArray* sections;
    @property (nullable, nonatomic, setter=setSectionGroups:, getter=sectionGroups) NSArray* sectionGroups;
    @property (nullable, nonatomic, setter=setPages:, getter=pages) NSArray* pages;
    @property (nullable, nonatomic, setter=setResources:, getter=resources) NSArray* resources;
    @property (nullable, nonatomic, setter=setOnenoteOperations:, getter=onenoteOperations) NSArray* onenoteOperations;
  
@end
