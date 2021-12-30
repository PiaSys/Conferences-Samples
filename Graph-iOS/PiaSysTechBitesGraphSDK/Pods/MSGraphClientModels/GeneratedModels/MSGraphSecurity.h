// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAlert, MSGraphSecureScoreControlProfile, MSGraphSecureScore; 


#import "MSGraphEntity.h"

@interface MSGraphSecurity : MSGraphEntity

  @property (nullable, nonatomic, setter=setAlerts:, getter=alerts) NSArray* alerts;
    @property (nullable, nonatomic, setter=setSecureScoreControlProfiles:, getter=secureScoreControlProfiles) NSArray* secureScoreControlProfiles;
    @property (nullable, nonatomic, setter=setSecureScores:, getter=secureScores) NSArray* secureScores;
  
@end
