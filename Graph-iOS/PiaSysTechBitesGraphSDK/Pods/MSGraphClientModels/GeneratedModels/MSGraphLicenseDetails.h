// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphServicePlanInfo; 


#import "MSGraphEntity.h"

@interface MSGraphLicenseDetails : MSGraphEntity

  @property (nonnull, nonatomic, setter=setServicePlans:, getter=servicePlans) NSArray* servicePlans;
    @property (nullable, nonatomic, setter=setSkuId:, getter=skuId) NSString* skuId;
    @property (nullable, nonatomic, setter=setSkuPartNumber:, getter=skuPartNumber) NSString* skuPartNumber;
  
@end
