// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDaylightTimeZoneOffset()
{
    int32_t _daylightBias;
}
@end

@implementation MSGraphDaylightTimeZoneOffset

- (int32_t) daylightBias
{
    _daylightBias = [self.dictionary[@"daylightBias"] intValue];
    return _daylightBias;
}

- (void) setDaylightBias: (int32_t) val
{
    _daylightBias = val;
    self.dictionary[@"daylightBias"] = @(val);
}

@end
