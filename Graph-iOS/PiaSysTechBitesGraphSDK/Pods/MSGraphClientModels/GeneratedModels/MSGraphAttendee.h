// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphResponseStatus; 


#import "MSGraphAttendeeBase.h"

@interface MSGraphAttendee : MSGraphAttendeeBase

@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphResponseStatus* status;

@end
