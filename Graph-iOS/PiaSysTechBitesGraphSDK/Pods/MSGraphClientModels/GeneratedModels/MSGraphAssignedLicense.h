// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAssignedLicense : MSObject

@property (nonnull, nonatomic, setter=setDisabledPlans:, getter=disabledPlans) NSArray* disabledPlans;
@property (nullable, nonatomic, setter=setSkuId:, getter=skuId) NSString* skuId;

@end
