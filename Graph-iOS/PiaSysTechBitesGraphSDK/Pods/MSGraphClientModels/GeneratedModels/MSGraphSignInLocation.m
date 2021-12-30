// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSignInLocation()
{
    NSString* _city;
    NSString* _state;
    NSString* _countryOrRegion;
    MSGraphGeoCoordinates* _geoCoordinates;
}
@end

@implementation MSGraphSignInLocation

- (NSString*) city
{
    if([[NSNull null] isEqual:self.dictionary[@"city"]])
    {
        return nil;
    }   
    return self.dictionary[@"city"];
}

- (void) setCity: (NSString*) val
{
    self.dictionary[@"city"] = val;
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

- (NSString*) countryOrRegion
{
    if([[NSNull null] isEqual:self.dictionary[@"countryOrRegion"]])
    {
        return nil;
    }   
    return self.dictionary[@"countryOrRegion"];
}

- (void) setCountryOrRegion: (NSString*) val
{
    self.dictionary[@"countryOrRegion"] = val;
}

- (MSGraphGeoCoordinates*) geoCoordinates
{
    if(!_geoCoordinates){
        _geoCoordinates = [[MSGraphGeoCoordinates alloc] initWithDictionary: self.dictionary[@"geoCoordinates"]];
    }
    return _geoCoordinates;
}

- (void) setGeoCoordinates: (MSGraphGeoCoordinates*) val
{
    _geoCoordinates = val;
    self.dictionary[@"geoCoordinates"] = val;
}

@end
