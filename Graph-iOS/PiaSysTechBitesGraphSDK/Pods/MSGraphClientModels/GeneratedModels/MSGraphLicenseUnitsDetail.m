// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLicenseUnitsDetail()
{
    int32_t _enabled;
    int32_t _suspended;
    int32_t _warning;
}
@end

@implementation MSGraphLicenseUnitsDetail

- (int32_t) enabled
{
    _enabled = [self.dictionary[@"enabled"] intValue];
    return _enabled;
}

- (void) setEnabled: (int32_t) val
{
    _enabled = val;
    self.dictionary[@"enabled"] = @(val);
}

- (int32_t) suspended
{
    _suspended = [self.dictionary[@"suspended"] intValue];
    return _suspended;
}

- (void) setSuspended: (int32_t) val
{
    _suspended = val;
    self.dictionary[@"suspended"] = @(val);
}

- (int32_t) warning
{
    _warning = [self.dictionary[@"warning"] intValue];
    return _warning;
}

- (void) setWarning: (int32_t) val
{
    _warning = val;
    self.dictionary[@"warning"] = @(val);
}

@end
