// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphItemActionStat, MSGraphIncompleteData, MSGraphItemActivity; 


#import "MSGraphEntity.h"

@interface MSGraphItemActivityStat : MSGraphEntity

  @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setAccess:, getter=access) MSGraphItemActionStat* access;
    @property (nullable, nonatomic, setter=setCreate:, getter=create) MSGraphItemActionStat* create;
    @property (nullable, nonatomic, setter=setDelete:, getter=delete) MSGraphItemActionStat* delete;
    @property (nullable, nonatomic, setter=setEdit:, getter=edit) MSGraphItemActionStat* edit;
    @property (nullable, nonatomic, setter=setMove:, getter=move) MSGraphItemActionStat* move;
    @property (nonatomic, setter=setIsTrending:, getter=isTrending) BOOL isTrending;
    @property (nullable, nonatomic, setter=setIncompleteData:, getter=incompleteData) MSGraphIncompleteData* incompleteData;
    @property (nullable, nonatomic, setter=setActivities:, getter=activities) NSArray* activities;
  
@end
