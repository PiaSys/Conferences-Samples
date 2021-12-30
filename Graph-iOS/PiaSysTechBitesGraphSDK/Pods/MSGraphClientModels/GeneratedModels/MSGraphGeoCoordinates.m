// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGeoCoordinates()
{
    double _altitude;
    double _latitude;
    double _longitude;
}
@end

@implementation MSGraphGeoCoordinates

- (double) altitude
{
    _altitude = [self.dictionary[@"altitude"] floatValue];
    return _altitude;
}

- (void) setAltitude: (double) val
{
    _altitude = val;
    self.dictionary[@"altitude"] = @(val);
}

- (double) latitude
{
    _latitude = [self.dictionary[@"latitude"] floatValue];
    return _latitude;
}

- (void) setLatitude: (double) val
{
    _latitude = val;
    self.dictionary[@"latitude"] = @(val);
}

- (double) longitude
{
    _longitude = [self.dictionary[@"longitude"] floatValue];
    return _longitude;
}

- (void) setLongitude: (double) val
{
    _longitude = val;
    self.dictionary[@"longitude"] = @(val);
}

@end
