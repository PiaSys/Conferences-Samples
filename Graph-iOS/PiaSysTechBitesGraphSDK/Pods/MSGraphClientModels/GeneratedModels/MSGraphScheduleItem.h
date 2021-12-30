// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDateTimeTimeZone; 
#import "MSGraphFreeBusyStatus.h"


#import "MSObject.h"

@interface MSGraphScheduleItem : MSObject

@property (nullable, nonatomic, setter=setStart:, getter=start) MSGraphDateTimeTimeZone* start;
@property (nullable, nonatomic, setter=setEnd:, getter=end) MSGraphDateTimeTimeZone* end;
@property (nonatomic, setter=setIsPrivate:, getter=isPrivate) BOOL isPrivate;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphFreeBusyStatus* status;
@property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
@property (nullable, nonatomic, setter=setLocation:, getter=location) NSString* location;

@end
