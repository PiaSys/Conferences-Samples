// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLocateDeviceActionResult()
{
    MSGraphDeviceGeoLocation* _deviceLocation;
}
@end

@implementation MSGraphLocateDeviceActionResult

- (MSGraphDeviceGeoLocation*) deviceLocation
{
    if(!_deviceLocation){
        _deviceLocation = [[MSGraphDeviceGeoLocation alloc] initWithDictionary: self.dictionary[@"deviceLocation"]];
    }
    return _deviceLocation;
}

- (void) setDeviceLocation: (MSGraphDeviceGeoLocation*) val
{
    _deviceLocation = val;
    self.dictionary[@"deviceLocation"] = val;
}

@end
