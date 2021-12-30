// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEmailAddress, MSGraphSingleValueLegacyExtendedProperty, MSGraphMultiValueLegacyExtendedProperty, MSGraphEvent; 
#import "MSGraphCalendarColor.h"


#import "MSGraphEntity.h"

@interface MSGraphCalendar : MSGraphEntity

  @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setColor:, getter=color) MSGraphCalendarColor* color;
    @property (nullable, nonatomic, setter=setChangeKey:, getter=changeKey) NSString* changeKey;
    @property (nonatomic, setter=setCanShare:, getter=canShare) BOOL canShare;
    @property (nonatomic, setter=setCanViewPrivateItems:, getter=canViewPrivateItems) BOOL canViewPrivateItems;
    @property (nonatomic, setter=setCanEdit:, getter=canEdit) BOOL canEdit;
    @property (nullable, nonatomic, setter=setOwner:, getter=owner) MSGraphEmailAddress* owner;
    @property (nullable, nonatomic, setter=setSingleValueExtendedProperties:, getter=singleValueExtendedProperties) NSArray* singleValueExtendedProperties;
    @property (nullable, nonatomic, setter=setMultiValueExtendedProperties:, getter=multiValueExtendedProperties) NSArray* multiValueExtendedProperties;
    @property (nullable, nonatomic, setter=setEvents:, getter=events) NSArray* events;
    @property (nullable, nonatomic, setter=setCalendarView:, getter=calendarView) NSArray* calendarView;
  
@end
