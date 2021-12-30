// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceGeoLocation()
{
    NSDate* _lastCollectedDateTime;
    double _longitude;
    double _latitude;
    double _altitude;
    double _horizontalAccuracy;
    double _verticalAccuracy;
    double _heading;
    double _speed;
}
@end

@implementation MSGraphDeviceGeoLocation

- (NSDate*) lastCollectedDateTime
{
    if(!_lastCollectedDateTime){
        _lastCollectedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastCollectedDateTime"]];
    }
    return _lastCollectedDateTime;
}

- (void) setLastCollectedDateTime: (NSDate*) val
{
    _lastCollectedDateTime = val;
    self.dictionary[@"lastCollectedDateTime"] = [val ms_toString];
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

- (double) horizontalAccuracy
{
    _horizontalAccuracy = [self.dictionary[@"horizontalAccuracy"] floatValue];
    return _horizontalAccuracy;
}

- (void) setHorizontalAccuracy: (double) val
{
    _horizontalAccuracy = val;
    self.dictionary[@"horizontalAccuracy"] = @(val);
}

- (double) verticalAccuracy
{
    _verticalAccuracy = [self.dictionary[@"verticalAccuracy"] floatValue];
    return _verticalAccuracy;
}

- (void) setVerticalAccuracy: (double) val
{
    _verticalAccuracy = val;
    self.dictionary[@"verticalAccuracy"] = @(val);
}

- (double) heading
{
    _heading = [self.dictionary[@"heading"] floatValue];
    return _heading;
}

- (void) setHeading: (double) val
{
    _heading = val;
    self.dictionary[@"heading"] = @(val);
}

- (double) speed
{
    _speed = [self.dictionary[@"speed"] floatValue];
    return _speed;
}

- (void) setSpeed: (double) val
{
    _speed = val;
    self.dictionary[@"speed"] = @(val);
}

@end
