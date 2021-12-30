// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphQuota, MSGraphSharepointIds, MSGraphSystemFacet, MSGraphDriveItem, MSGraphList; 


#import "MSGraphBaseItem.h"

@interface MSGraphDrive : MSGraphBaseItem

  @property (nullable, nonatomic, setter=setDriveType:, getter=driveType) NSString* driveType;
    @property (nullable, nonatomic, setter=setOwner:, getter=owner) MSGraphIdentitySet* owner;
    @property (nullable, nonatomic, setter=setQuota:, getter=quota) MSGraphQuota* quota;
    @property (nullable, nonatomic, setter=setSharePointIds:, getter=sharePointIds) MSGraphSharepointIds* sharePointIds;
    @property (nullable, nonatomic, setter=setSystem:, getter=system) MSGraphSystemFacet* system;
    @property (nullable, nonatomic, setter=setItems:, getter=items) NSArray* items;
    @property (nullable, nonatomic, setter=setList:, getter=list) MSGraphList* list;
    @property (nullable, nonatomic, setter=setRoot:, getter=root) MSGraphDriveItem* root;
    @property (nullable, nonatomic, setter=setSpecial:, getter=special) NSArray* special;
  
@end
