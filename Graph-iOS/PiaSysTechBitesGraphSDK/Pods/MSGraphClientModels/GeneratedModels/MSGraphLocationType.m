// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLocationType.h"

@interface MSGraphLocationType () {
    MSGraphLocationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphLocationTypeValue enumValue;
@end

@implementation MSGraphLocationType

+ (MSGraphLocationType*) default {
    static MSGraphLocationType *_default;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _default = [[MSGraphLocationType alloc] init];
        _default.enumValue = MSGraphLocationTypeDefault;
    });
    return _default;
}
+ (MSGraphLocationType*) conferenceRoom {
    static MSGraphLocationType *_conferenceRoom;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _conferenceRoom = [[MSGraphLocationType alloc] init];
        _conferenceRoom.enumValue = MSGraphLocationTypeConferenceRoom;
    });
    return _conferenceRoom;
}
+ (MSGraphLocationType*) homeAddress {
    static MSGraphLocationType *_homeAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _homeAddress = [[MSGraphLocationType alloc] init];
        _homeAddress.enumValue = MSGraphLocationTypeHomeAddress;
    });
    return _homeAddress;
}
+ (MSGraphLocationType*) businessAddress {
    static MSGraphLocationType *_businessAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _businessAddress = [[MSGraphLocationType alloc] init];
        _businessAddress.enumValue = MSGraphLocationTypeBusinessAddress;
    });
    return _businessAddress;
}
+ (MSGraphLocationType*) geoCoordinates {
    static MSGraphLocationType *_geoCoordinates;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _geoCoordinates = [[MSGraphLocationType alloc] init];
        _geoCoordinates.enumValue = MSGraphLocationTypeGeoCoordinates;
    });
    return _geoCoordinates;
}
+ (MSGraphLocationType*) streetAddress {
    static MSGraphLocationType *_streetAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _streetAddress = [[MSGraphLocationType alloc] init];
        _streetAddress.enumValue = MSGraphLocationTypeStreetAddress;
    });
    return _streetAddress;
}
+ (MSGraphLocationType*) hotel {
    static MSGraphLocationType *_hotel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hotel = [[MSGraphLocationType alloc] init];
        _hotel.enumValue = MSGraphLocationTypeHotel;
    });
    return _hotel;
}
+ (MSGraphLocationType*) restaurant {
    static MSGraphLocationType *_restaurant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restaurant = [[MSGraphLocationType alloc] init];
        _restaurant.enumValue = MSGraphLocationTypeRestaurant;
    });
    return _restaurant;
}
+ (MSGraphLocationType*) localBusiness {
    static MSGraphLocationType *_localBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localBusiness = [[MSGraphLocationType alloc] init];
        _localBusiness.enumValue = MSGraphLocationTypeLocalBusiness;
    });
    return _localBusiness;
}
+ (MSGraphLocationType*) postalAddress {
    static MSGraphLocationType *_postalAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _postalAddress = [[MSGraphLocationType alloc] init];
        _postalAddress.enumValue = MSGraphLocationTypePostalAddress;
    });
    return _postalAddress;
}

+ (MSGraphLocationType*) UnknownEnumValue {
    static MSGraphLocationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphLocationType alloc] init];
        _unknownValue.enumValue = MSGraphLocationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphLocationType*) locationTypeWithEnumValue:(MSGraphLocationTypeValue)val {

    switch(val)
    {
        case MSGraphLocationTypeDefault:
            return [MSGraphLocationType default];
        case MSGraphLocationTypeConferenceRoom:
            return [MSGraphLocationType conferenceRoom];
        case MSGraphLocationTypeHomeAddress:
            return [MSGraphLocationType homeAddress];
        case MSGraphLocationTypeBusinessAddress:
            return [MSGraphLocationType businessAddress];
        case MSGraphLocationTypeGeoCoordinates:
            return [MSGraphLocationType geoCoordinates];
        case MSGraphLocationTypeStreetAddress:
            return [MSGraphLocationType streetAddress];
        case MSGraphLocationTypeHotel:
            return [MSGraphLocationType hotel];
        case MSGraphLocationTypeRestaurant:
            return [MSGraphLocationType restaurant];
        case MSGraphLocationTypeLocalBusiness:
            return [MSGraphLocationType localBusiness];
        case MSGraphLocationTypePostalAddress:
            return [MSGraphLocationType postalAddress];
        case MSGraphLocationTypeEndOfEnum:
        default:
            return [MSGraphLocationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphLocationTypeDefault:
            return @"default";
        case MSGraphLocationTypeConferenceRoom:
            return @"conferenceRoom";
        case MSGraphLocationTypeHomeAddress:
            return @"homeAddress";
        case MSGraphLocationTypeBusinessAddress:
            return @"businessAddress";
        case MSGraphLocationTypeGeoCoordinates:
            return @"geoCoordinates";
        case MSGraphLocationTypeStreetAddress:
            return @"streetAddress";
        case MSGraphLocationTypeHotel:
            return @"hotel";
        case MSGraphLocationTypeRestaurant:
            return @"restaurant";
        case MSGraphLocationTypeLocalBusiness:
            return @"localBusiness";
        case MSGraphLocationTypePostalAddress:
            return @"postalAddress";
        case MSGraphLocationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphLocationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphLocationType)

- (MSGraphLocationType*) toMSGraphLocationType{

    if([self isEqualToString:@"default"])
    {
          return [MSGraphLocationType default];
    }
    else if([self isEqualToString:@"conferenceRoom"])
    {
          return [MSGraphLocationType conferenceRoom];
    }
    else if([self isEqualToString:@"homeAddress"])
    {
          return [MSGraphLocationType homeAddress];
    }
    else if([self isEqualToString:@"businessAddress"])
    {
          return [MSGraphLocationType businessAddress];
    }
    else if([self isEqualToString:@"geoCoordinates"])
    {
          return [MSGraphLocationType geoCoordinates];
    }
    else if([self isEqualToString:@"streetAddress"])
    {
          return [MSGraphLocationType streetAddress];
    }
    else if([self isEqualToString:@"hotel"])
    {
          return [MSGraphLocationType hotel];
    }
    else if([self isEqualToString:@"restaurant"])
    {
          return [MSGraphLocationType restaurant];
    }
    else if([self isEqualToString:@"localBusiness"])
    {
          return [MSGraphLocationType localBusiness];
    }
    else if([self isEqualToString:@"postalAddress"])
    {
          return [MSGraphLocationType postalAddress];
    }
    else {
        return [MSGraphLocationType UnknownEnumValue];
    }
}

@end
