// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphStandardTimeZoneOffset.h"

@interface MSGraphDaylightTimeZoneOffset : MSGraphStandardTimeZoneOffset

@property (nonatomic, setter=setDaylightBias:, getter=daylightBias) int32_t daylightBias;

@end
