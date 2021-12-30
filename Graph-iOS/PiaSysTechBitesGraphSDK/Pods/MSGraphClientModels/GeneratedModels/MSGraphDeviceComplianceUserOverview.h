// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphDeviceComplianceUserOverview : MSGraphEntity

  @property (nonatomic, setter=setPendingCount:, getter=pendingCount) int32_t pendingCount;
    @property (nonatomic, setter=setNotApplicableCount:, getter=notApplicableCount) int32_t notApplicableCount;
    @property (nonatomic, setter=setSuccessCount:, getter=successCount) int32_t successCount;
    @property (nonatomic, setter=setErrorCount:, getter=errorCount) int32_t errorCount;
    @property (nonatomic, setter=setFailedCount:, getter=failedCount) int32_t failedCount;
    @property (nonnull, nonatomic, setter=setLastUpdateDateTime:, getter=lastUpdateDateTime) NSDate* lastUpdateDateTime;
    @property (nonatomic, setter=setConfigurationVersion:, getter=configurationVersion) int32_t configurationVersion;
  
@end
