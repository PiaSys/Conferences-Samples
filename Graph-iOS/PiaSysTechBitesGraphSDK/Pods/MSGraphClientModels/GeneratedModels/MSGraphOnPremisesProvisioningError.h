// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphOnPremisesProvisioningError : MSObject

@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;
@property (nullable, nonatomic, setter=setCategory:, getter=category) NSString* category;
@property (nullable, nonatomic, setter=setPropertyCausingError:, getter=propertyCausingError) NSString* propertyCausingError;
@property (nullable, nonatomic, setter=setOccurredDateTime:, getter=occurredDateTime) NSDate* occurredDateTime;

@end
