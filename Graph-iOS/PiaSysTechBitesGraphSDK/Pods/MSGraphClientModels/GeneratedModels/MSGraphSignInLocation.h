// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphGeoCoordinates; 


#import "MSObject.h"

@interface MSGraphSignInLocation : MSObject

@property (nullable, nonatomic, setter=setCity:, getter=city) NSString* city;
@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
@property (nullable, nonatomic, setter=setCountryOrRegion:, getter=countryOrRegion) NSString* countryOrRegion;
@property (nullable, nonatomic, setter=setGeoCoordinates:, getter=geoCoordinates) MSGraphGeoCoordinates* geoCoordinates;

@end
