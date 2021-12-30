// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphActionState.h"


#import "MSObject.h"

@interface MSGraphDeviceActionResult : MSObject

@property (nullable, nonatomic, setter=setActionName:, getter=actionName) NSString* actionName;
@property (nonnull, nonatomic, setter=setActionState:, getter=actionState) MSGraphActionState* actionState;
@property (nonnull, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nonnull, nonatomic, setter=setLastUpdatedDateTime:, getter=lastUpdatedDateTime) NSDate* lastUpdatedDateTime;

@end
