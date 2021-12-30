// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAlertFeedback.h"
#import "MSGraphAlertStatus.h"


#import "MSObject.h"

@interface MSGraphAlertHistoryState : MSObject

@property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
@property (nullable, nonatomic, setter=setAssignedTo:, getter=assignedTo) NSString* assignedTo;
@property (nullable, nonatomic, setter=setComments:, getter=comments) NSArray* comments;
@property (nullable, nonatomic, setter=setFeedback:, getter=feedback) MSGraphAlertFeedback* feedback;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphAlertStatus* status;
@property (nullable, nonatomic, setter=setUpdatedDateTime:, getter=updatedDateTime) NSDate* updatedDateTime;
@property (nullable, nonatomic, setter=setUser:, getter=user) NSString* user;

@end
