// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAverageComparativeScore, MSGraphControlScore, MSGraphSecurityVendorInformation; 


#import "MSGraphEntity.h"

@interface MSGraphSecureScore : MSGraphEntity

  @property (nonatomic, setter=setActiveUserCount:, getter=activeUserCount) int32_t activeUserCount;
    @property (nullable, nonatomic, setter=setAverageComparativeScores:, getter=averageComparativeScores) NSArray* averageComparativeScores;
    @property (nonnull, nonatomic, setter=setAzureTenantId:, getter=azureTenantId) NSString* azureTenantId;
    @property (nullable, nonatomic, setter=setControlScores:, getter=controlScores) NSArray* controlScores;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonatomic, setter=setCurrentScore:, getter=currentScore) double currentScore;
    @property (nullable, nonatomic, setter=setEnabledServices:, getter=enabledServices) NSArray* enabledServices;
    @property (nonatomic, setter=setLicensedUserCount:, getter=licensedUserCount) int32_t licensedUserCount;
    @property (nonatomic, setter=setMaxScore:, getter=maxScore) double maxScore;
    @property (nullable, nonatomic, setter=setVendorInformation:, getter=vendorInformation) MSGraphSecurityVendorInformation* vendorInformation;
  
@end
