// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceEnrollmentLimitConfiguration()
{
    int32_t _limit;
}
@end

@implementation MSGraphDeviceEnrollmentLimitConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceEnrollmentLimitConfiguration";
    }
    return self;
}
- (int32_t) limit
{
    _limit = [self.dictionary[@"limit"] intValue];
    return _limit;
}

- (void) setLimit: (int32_t) val
{
    _limit = val;
    self.dictionary[@"limit"] = @(val);
}


@end
