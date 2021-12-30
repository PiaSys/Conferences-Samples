// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphListInfo, MSGraphSharepointIds, MSGraphSystemFacet, MSGraphColumnDefinition, MSGraphContentType, MSGraphDrive, MSGraphListItem; 


#import "MSGraphBaseItem.h"

@interface MSGraphList : MSGraphBaseItem

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setList:, getter=list) MSGraphListInfo* list;
    @property (nullable, nonatomic, setter=setSharepointIds:, getter=sharepointIds) MSGraphSharepointIds* sharepointIds;
    @property (nullable, nonatomic, setter=setSystem:, getter=system) MSGraphSystemFacet* system;
    @property (nullable, nonatomic, setter=setColumns:, getter=columns) NSArray* columns;
    @property (nullable, nonatomic, setter=setContentTypes:, getter=contentTypes) NSArray* contentTypes;
    @property (nullable, nonatomic, setter=setDrive:, getter=drive) MSGraphDrive* drive;
    @property (nullable, nonatomic, setter=setItems:, getter=items) NSArray* items;
  
@end
