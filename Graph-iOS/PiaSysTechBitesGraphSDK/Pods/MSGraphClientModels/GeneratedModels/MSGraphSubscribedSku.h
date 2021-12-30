// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphLicenseUnitsDetail, MSGraphServicePlanInfo; 


#import "MSGraphEntity.h"

@interface MSGraphSubscribedSku : MSGraphEntity

  @property (nullable, nonatomic, setter=setCapabilityStatus:, getter=capabilityStatus) NSString* capabilityStatus;
    @property (nonatomic, setter=setConsumedUnits:, getter=consumedUnits) int32_t consumedUnits;
    @property (nullable, nonatomic, setter=setPrepaidUnits:, getter=prepaidUnits) MSGraphLicenseUnitsDetail* prepaidUnits;
    @property (nonnull, nonatomic, setter=setServicePlans:, getter=servicePlans) NSArray* servicePlans;
    @property (nullable, nonatomic, setter=setSkuId:, getter=skuId) NSString* skuId;
    @property (nullable, nonatomic, setter=setSkuPartNumber:, getter=skuPartNumber) NSString* skuPartNumber;
    @property (nullable, nonatomic, setter=setAppliesTo:, getter=appliesTo) NSString* appliesTo;
  
@end
