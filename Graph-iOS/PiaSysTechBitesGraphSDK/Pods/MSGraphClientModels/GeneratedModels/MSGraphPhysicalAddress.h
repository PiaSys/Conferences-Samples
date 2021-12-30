// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPhysicalAddress : MSObject

@property (nullable, nonatomic, setter=setStreet:, getter=street) NSString* street;
@property (nullable, nonatomic, setter=setCity:, getter=city) NSString* city;
@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
@property (nullable, nonatomic, setter=setCountryOrRegion:, getter=countryOrRegion) NSString* countryOrRegion;
@property (nullable, nonatomic, setter=setPostalCode:, getter=postalCode) NSString* postalCode;

@end
