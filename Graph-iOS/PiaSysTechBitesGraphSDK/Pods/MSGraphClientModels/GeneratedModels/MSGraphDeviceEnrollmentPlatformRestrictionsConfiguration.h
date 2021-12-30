// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceEnrollmentPlatformRestriction; 


#import "MSGraphDeviceEnrollmentConfiguration.h"

@interface MSGraphDeviceEnrollmentPlatformRestrictionsConfiguration : MSGraphDeviceEnrollmentConfiguration

  @property (nullable, nonatomic, setter=setIosRestriction:, getter=iosRestriction) MSGraphDeviceEnrollmentPlatformRestriction* iosRestriction;
    @property (nullable, nonatomic, setter=setWindowsRestriction:, getter=windowsRestriction) MSGraphDeviceEnrollmentPlatformRestriction* windowsRestriction;
    @property (nullable, nonatomic, setter=setWindowsMobileRestriction:, getter=windowsMobileRestriction) MSGraphDeviceEnrollmentPlatformRestriction* windowsMobileRestriction;
    @property (nullable, nonatomic, setter=setAndroidRestriction:, getter=androidRestriction) MSGraphDeviceEnrollmentPlatformRestriction* androidRestriction;
    @property (nullable, nonatomic, setter=setMacOSRestriction:, getter=macOSRestriction) MSGraphDeviceEnrollmentPlatformRestriction* macOSRestriction;
  
@end
