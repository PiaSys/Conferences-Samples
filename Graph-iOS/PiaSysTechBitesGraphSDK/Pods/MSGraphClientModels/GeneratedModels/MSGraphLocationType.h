// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphLocationTypeValue){

	MSGraphLocationTypeDefault = 0,
	MSGraphLocationTypeConferenceRoom = 1,
	MSGraphLocationTypeHomeAddress = 2,
	MSGraphLocationTypeBusinessAddress = 3,
	MSGraphLocationTypeGeoCoordinates = 4,
	MSGraphLocationTypeStreetAddress = 5,
	MSGraphLocationTypeHotel = 6,
	MSGraphLocationTypeRestaurant = 7,
	MSGraphLocationTypeLocalBusiness = 8,
	MSGraphLocationTypePostalAddress = 9,
    MSGraphLocationTypeEndOfEnum
};

@interface MSGraphLocationType : NSObject

+(MSGraphLocationType*) default;
+(MSGraphLocationType*) conferenceRoom;
+(MSGraphLocationType*) homeAddress;
+(MSGraphLocationType*) businessAddress;
+(MSGraphLocationType*) geoCoordinates;
+(MSGraphLocationType*) streetAddress;
+(MSGraphLocationType*) hotel;
+(MSGraphLocationType*) restaurant;
+(MSGraphLocationType*) localBusiness;
+(MSGraphLocationType*) postalAddress;

+(MSGraphLocationType*) UnknownEnumValue;

+(MSGraphLocationType*) locationTypeWithEnumValue:(MSGraphLocationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphLocationTypeValue enumValue;

@end


@interface NSString (MSGraphLocationType)

- (MSGraphLocationType*) toMSGraphLocationType;

@end
