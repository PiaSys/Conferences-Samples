// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphIncompleteData : MSObject

@property (nullable, nonatomic, setter=setMissingDataBeforeDateTime:, getter=missingDataBeforeDateTime) NSDate* missingDataBeforeDateTime;
@property (nonatomic, setter=setWasThrottled:, getter=wasThrottled) BOOL wasThrottled;

@end
