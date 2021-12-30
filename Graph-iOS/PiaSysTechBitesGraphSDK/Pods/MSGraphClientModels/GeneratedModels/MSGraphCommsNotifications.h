// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphCommsNotification; 


#import "MSObject.h"

@interface MSGraphCommsNotifications : MSObject

@property (nullable, nonatomic, setter=setValue:, getter=value) NSArray* value;

@end
