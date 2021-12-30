// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphDeviceActionResult.h"

@interface MSGraphRemoteLockActionResult : MSGraphDeviceActionResult

@property (nullable, nonatomic, setter=setUnlockPin:, getter=unlockPin) NSString* unlockPin;

@end
