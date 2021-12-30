// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphDeviceActionResult.h"

@interface MSGraphWindowsDefenderScanActionResult : MSGraphDeviceActionResult

@property (nullable, nonatomic, setter=setScanType:, getter=scanType) NSString* scanType;

@end
