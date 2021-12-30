// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphDeviceActionResult.h"

@interface MSGraphResetPasscodeActionResult : MSGraphDeviceActionResult

@property (nullable, nonatomic, setter=setPasscode:, getter=passcode) NSString* passcode;

@end
