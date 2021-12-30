// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessAction, MSGraphIdentitySet, MSGraphDriveItem; 


#import "MSGraphEntity.h"

@interface MSGraphItemActivity : MSGraphEntity

  @property (nullable, nonatomic, setter=setAccess:, getter=access) MSGraphAccessAction* access;
    @property (nullable, nonatomic, setter=setActivityDateTime:, getter=activityDateTime) NSDate* activityDateTime;
    @property (nullable, nonatomic, setter=setActor:, getter=actor) MSGraphIdentitySet* actor;
    @property (nullable, nonatomic, setter=setDriveItem:, getter=driveItem) MSGraphDriveItem* driveItem;
  
@end
