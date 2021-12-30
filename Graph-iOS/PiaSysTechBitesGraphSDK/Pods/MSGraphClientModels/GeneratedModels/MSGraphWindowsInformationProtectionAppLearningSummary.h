// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphApplicationType.h"


#import "MSGraphEntity.h"

@interface MSGraphWindowsInformationProtectionAppLearningSummary : MSGraphEntity

  @property (nullable, nonatomic, setter=setApplicationName:, getter=applicationName) NSString* applicationName;
    @property (nonnull, nonatomic, setter=setApplicationType:, getter=applicationType) MSGraphApplicationType* applicationType;
    @property (nonatomic, setter=setDeviceCount:, getter=deviceCount) int32_t deviceCount;
  
@end
