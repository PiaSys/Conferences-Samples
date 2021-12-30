// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAttendeeType.h"


#import "MSGraphRecipient.h"

@interface MSGraphAttendeeBase : MSGraphRecipient

@property (nullable, nonatomic, setter=setType:, getter=type) MSGraphAttendeeType* type;

@end
