// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphDriveItem, MSGraphList, MSGraphListItem, MSGraphSite; 


#import "MSGraphBaseItem.h"

@interface MSGraphSharedDriveItem : MSGraphBaseItem

  @property (nullable, nonatomic, setter=setOwner:, getter=owner) MSGraphIdentitySet* owner;
    @property (nullable, nonatomic, setter=setDriveItem:, getter=driveItem) MSGraphDriveItem* driveItem;
    @property (nullable, nonatomic, setter=setItems:, getter=items) NSArray* items;
    @property (nullable, nonatomic, setter=setList:, getter=list) MSGraphList* list;
    @property (nullable, nonatomic, setter=setListItem:, getter=listItem) MSGraphListItem* listItem;
    @property (nullable, nonatomic, setter=setRoot:, getter=root) MSGraphDriveItem* root;
    @property (nullable, nonatomic, setter=setSite:, getter=site) MSGraphSite* site;
  
@end
