// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDeviceGeoLocation; 


#import "MSGraphDeviceActionResult.h"

@interface MSGraphLocateDeviceActionResult : MSGraphDeviceActionResult

@property (nullable, nonatomic, setter=setDeviceLocation:, getter=deviceLocation) MSGraphDeviceGeoLocation* deviceLocation;

@end
