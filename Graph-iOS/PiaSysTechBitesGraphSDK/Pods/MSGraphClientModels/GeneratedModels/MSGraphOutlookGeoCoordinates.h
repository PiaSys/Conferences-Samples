// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphOutlookGeoCoordinates : MSObject

@property (nonatomic, setter=setLatitude:, getter=latitude) double latitude;
@property (nonatomic, setter=setLongitude:, getter=longitude) double longitude;
@property (nonatomic, setter=setAccuracy:, getter=accuracy) double accuracy;
@property (nonatomic, setter=setAltitude:, getter=altitude) double altitude;
@property (nonatomic, setter=setAltitudeAccuracy:, getter=altitudeAccuracy) double altitudeAccuracy;

@end
