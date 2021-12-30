// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOutlookGeoCoordinates()
{
    double _latitude;
    double _longitude;
    double _accuracy;
    double _altitude;
    double _altitudeAccuracy;
}
@end

@implementation MSGraphOutlookGeoCoordinates

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

- (double) accuracy
{
    _accuracy = [self.dictionary[@"accuracy"] floatValue];
    return _accuracy;
}

- (void) setAccuracy: (double) val
{
    _accuracy = val;
    self.dictionary[@"accuracy"] = @(val);
}

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

- (double) altitudeAccuracy
{
    _altitudeAccuracy = [self.dictionary[@"altitudeAccuracy"] floatValue];
    return _altitudeAccuracy;
}

- (void) setAltitudeAccuracy: (double) val
{
    _altitudeAccuracy = val;
    self.dictionary[@"altitudeAccuracy"] = @(val);
}

@end
