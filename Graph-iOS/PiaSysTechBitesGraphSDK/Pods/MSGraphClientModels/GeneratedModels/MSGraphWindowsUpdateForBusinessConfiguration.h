// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWindowsUpdateInstallScheduleType; 
#import "MSGraphWindowsDeliveryOptimizationMode.h"
#import "MSGraphPrereleaseFeatures.h"
#import "MSGraphAutomaticUpdateMode.h"
#import "MSGraphWindowsUpdateType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindowsUpdateForBusinessConfiguration : MSGraphDeviceConfiguration

  @property (nonnull, nonatomic, setter=setDeliveryOptimizationMode:, getter=deliveryOptimizationMode) MSGraphWindowsDeliveryOptimizationMode* deliveryOptimizationMode;
    @property (nonnull, nonatomic, setter=setPrereleaseFeatures:, getter=prereleaseFeatures) MSGraphPrereleaseFeatures* prereleaseFeatures;
    @property (nonnull, nonatomic, setter=setAutomaticUpdateMode:, getter=automaticUpdateMode) MSGraphAutomaticUpdateMode* automaticUpdateMode;
    @property (nonatomic, setter=setMicrosoftUpdateServiceAllowed:, getter=microsoftUpdateServiceAllowed) BOOL microsoftUpdateServiceAllowed;
    @property (nonatomic, setter=setDriversExcluded:, getter=driversExcluded) BOOL driversExcluded;
    @property (nullable, nonatomic, setter=setInstallationSchedule:, getter=installationSchedule) MSGraphWindowsUpdateInstallScheduleType* installationSchedule;
    @property (nonatomic, setter=setQualityUpdatesDeferralPeriodInDays:, getter=qualityUpdatesDeferralPeriodInDays) int32_t qualityUpdatesDeferralPeriodInDays;
    @property (nonatomic, setter=setFeatureUpdatesDeferralPeriodInDays:, getter=featureUpdatesDeferralPeriodInDays) int32_t featureUpdatesDeferralPeriodInDays;
    @property (nonatomic, setter=setQualityUpdatesPaused:, getter=qualityUpdatesPaused) BOOL qualityUpdatesPaused;
    @property (nonatomic, setter=setFeatureUpdatesPaused:, getter=featureUpdatesPaused) BOOL featureUpdatesPaused;
    @property (nonnull, nonatomic, setter=setQualityUpdatesPauseExpiryDateTime:, getter=qualityUpdatesPauseExpiryDateTime) NSDate* qualityUpdatesPauseExpiryDateTime;
    @property (nonnull, nonatomic, setter=setFeatureUpdatesPauseExpiryDateTime:, getter=featureUpdatesPauseExpiryDateTime) NSDate* featureUpdatesPauseExpiryDateTime;
    @property (nonnull, nonatomic, setter=setBusinessReadyUpdatesOnly:, getter=businessReadyUpdatesOnly) MSGraphWindowsUpdateType* businessReadyUpdatesOnly;
  
@end
