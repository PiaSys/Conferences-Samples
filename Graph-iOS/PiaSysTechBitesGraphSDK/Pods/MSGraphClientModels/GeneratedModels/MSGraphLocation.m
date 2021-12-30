// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLocation()
{
    NSString* _displayName;
    NSString* _locationEmailAddress;
    MSGraphPhysicalAddress* _address;
    NSString* _locationUri;
    MSGraphOutlookGeoCoordinates* _coordinates;
    MSGraphLocationType* _locationType;
    NSString* _uniqueId;
    MSGraphLocationUniqueIdType* _uniqueIdType;
}
@end

@implementation MSGraphLocation

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) locationEmailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"locationEmailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"locationEmailAddress"];
}

- (void) setLocationEmailAddress: (NSString*) val
{
    self.dictionary[@"locationEmailAddress"] = val;
}

- (MSGraphPhysicalAddress*) address
{
    if(!_address){
        _address = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"address"]];
    }
    return _address;
}

- (void) setAddress: (MSGraphPhysicalAddress*) val
{
    _address = val;
    self.dictionary[@"address"] = val;
}

- (NSString*) locationUri
{
    if([[NSNull null] isEqual:self.dictionary[@"locationUri"]])
    {
        return nil;
    }   
    return self.dictionary[@"locationUri"];
}

- (void) setLocationUri: (NSString*) val
{
    self.dictionary[@"locationUri"] = val;
}

- (MSGraphOutlookGeoCoordinates*) coordinates
{
    if(!_coordinates){
        _coordinates = [[MSGraphOutlookGeoCoordinates alloc] initWithDictionary: self.dictionary[@"coordinates"]];
    }
    return _coordinates;
}

- (void) setCoordinates: (MSGraphOutlookGeoCoordinates*) val
{
    _coordinates = val;
    self.dictionary[@"coordinates"] = val;
}

- (MSGraphLocationType*) locationType
{
    if(!_locationType){
        _locationType = [self.dictionary[@"locationType"] toMSGraphLocationType];
    }
    return _locationType;
}

- (void) setLocationType: (MSGraphLocationType*) val
{
    _locationType = val;
    self.dictionary[@"locationType"] = val;
}

- (NSString*) uniqueId
{
    if([[NSNull null] isEqual:self.dictionary[@"uniqueId"]])
    {
        return nil;
    }   
    return self.dictionary[@"uniqueId"];
}

- (void) setUniqueId: (NSString*) val
{
    self.dictionary[@"uniqueId"] = val;
}

- (MSGraphLocationUniqueIdType*) uniqueIdType
{
    if(!_uniqueIdType){
        _uniqueIdType = [self.dictionary[@"uniqueIdType"] toMSGraphLocationUniqueIdType];
    }
    return _uniqueIdType;
}

- (void) setUniqueIdType: (MSGraphLocationUniqueIdType*) val
{
    _uniqueIdType = val;
    self.dictionary[@"uniqueIdType"] = val;
}

@end
