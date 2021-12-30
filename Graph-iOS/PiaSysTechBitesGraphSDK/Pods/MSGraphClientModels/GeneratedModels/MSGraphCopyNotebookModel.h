// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphNotebookLinks, MSGraphIdentitySet; 
#import "MSGraphOnenoteUserRole.h"


#import "MSObject.h"

@interface MSGraphCopyNotebookModel : MSObject

@property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
@property (nullable, nonatomic, setter=setUserRole:, getter=userRole) MSGraphOnenoteUserRole* userRole;
@property (nonatomic, setter=setIsShared:, getter=isShared) BOOL isShared;
@property (nullable, nonatomic, setter=setSectionsUrl:, getter=sectionsUrl) NSString* sectionsUrl;
@property (nullable, nonatomic, setter=setSectionGroupsUrl:, getter=sectionGroupsUrl) NSString* sectionGroupsUrl;
@property (nullable, nonatomic, setter=setLinks:, getter=links) MSGraphNotebookLinks* links;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) NSString* createdBy;
@property (nullable, nonatomic, setter=setCreatedByIdentity:, getter=createdByIdentity) MSGraphIdentitySet* createdByIdentity;
@property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) NSString* lastModifiedBy;
@property (nullable, nonatomic, setter=setLastModifiedByIdentity:, getter=lastModifiedByIdentity) MSGraphIdentitySet* lastModifiedByIdentity;
@property (nullable, nonatomic, setter=setLastModifiedTime:, getter=lastModifiedTime) NSDate* lastModifiedTime;
@property (nullable, nonatomic, setter=setCopyNotebookModelId:, getter=getCopyNotebookModelId) NSString* copyNotebookModelId;
@property (nullable, nonatomic, setter=setCopyNotebookModelSelf:, getter=getCopyNotebookModelSelf) NSString* copyNotebookModelSelf;
@property (nullable, nonatomic, setter=setCreatedTime:, getter=createdTime) NSDate* createdTime;

@end
