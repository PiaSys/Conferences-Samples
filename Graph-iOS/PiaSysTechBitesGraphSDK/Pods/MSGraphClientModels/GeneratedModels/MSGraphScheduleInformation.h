// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphScheduleItem, MSGraphFreeBusyError, MSGraphWorkingHours; 


#import "MSObject.h"

@interface MSGraphScheduleInformation : MSObject

@property (nullable, nonatomic, setter=setScheduleId:, getter=scheduleId) NSString* scheduleId;
@property (nullable, nonatomic, setter=setScheduleItems:, getter=scheduleItems) NSArray* scheduleItems;
@property (nullable, nonatomic, setter=setAvailabilityView:, getter=availabilityView) NSString* availabilityView;
@property (nullable, nonatomic, setter=setError:, getter=error) MSGraphFreeBusyError* error;
@property (nullable, nonatomic, setter=setWorkingHours:, getter=workingHours) MSGraphWorkingHours* workingHours;

@end
