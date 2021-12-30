// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCalendar; 


#import "MSGraphEntity.h"

@interface MSGraphCalendarGroup : MSGraphEntity

  @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setClassId:, getter=classId) NSString* classId;
    @property (nullable, nonatomic, setter=setChangeKey:, getter=changeKey) NSString* changeKey;
    @property (nullable, nonatomic, setter=setCalendars:, getter=calendars) NSArray* calendars;
  
@end
