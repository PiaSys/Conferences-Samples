// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceOperatingSystemSummary : MSObject

@property (nonatomic, setter=setAndroidCount:, getter=androidCount) int32_t androidCount;
@property (nonatomic, setter=setIosCount:, getter=iosCount) int32_t iosCount;
@property (nonatomic, setter=setMacOSCount:, getter=macOSCount) int32_t macOSCount;
@property (nonatomic, setter=setWindowsMobileCount:, getter=windowsMobileCount) int32_t windowsMobileCount;
@property (nonatomic, setter=setWindowsCount:, getter=windowsCount) int32_t windowsCount;
@property (nonatomic, setter=setUnknownCount:, getter=unknownCount) int32_t unknownCount;

@end
