// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidMinimumOperatingSystem()
{
    BOOL _v4_0;
    BOOL _v4_0_3;
    BOOL _v4_1;
    BOOL _v4_2;
    BOOL _v4_3;
    BOOL _v4_4;
    BOOL _v5_0;
    BOOL _v5_1;
}
@end

@implementation MSGraphAndroidMinimumOperatingSystem

- (BOOL) v4_0
{
    _v4_0 = [self.dictionary[@"v4_0"] boolValue];
    return _v4_0;
}

- (void) setV4_0: (BOOL) val
{
    _v4_0 = val;
    self.dictionary[@"v4_0"] = @(val);
}

- (BOOL) v4_0_3
{
    _v4_0_3 = [self.dictionary[@"v4_0_3"] boolValue];
    return _v4_0_3;
}

- (void) setV4_0_3: (BOOL) val
{
    _v4_0_3 = val;
    self.dictionary[@"v4_0_3"] = @(val);
}

- (BOOL) v4_1
{
    _v4_1 = [self.dictionary[@"v4_1"] boolValue];
    return _v4_1;
}

- (void) setV4_1: (BOOL) val
{
    _v4_1 = val;
    self.dictionary[@"v4_1"] = @(val);
}

- (BOOL) v4_2
{
    _v4_2 = [self.dictionary[@"v4_2"] boolValue];
    return _v4_2;
}

- (void) setV4_2: (BOOL) val
{
    _v4_2 = val;
    self.dictionary[@"v4_2"] = @(val);
}

- (BOOL) v4_3
{
    _v4_3 = [self.dictionary[@"v4_3"] boolValue];
    return _v4_3;
}

- (void) setV4_3: (BOOL) val
{
    _v4_3 = val;
    self.dictionary[@"v4_3"] = @(val);
}

- (BOOL) v4_4
{
    _v4_4 = [self.dictionary[@"v4_4"] boolValue];
    return _v4_4;
}

- (void) setV4_4: (BOOL) val
{
    _v4_4 = val;
    self.dictionary[@"v4_4"] = @(val);
}

- (BOOL) v5_0
{
    _v5_0 = [self.dictionary[@"v5_0"] boolValue];
    return _v5_0;
}

- (void) setV5_0: (BOOL) val
{
    _v5_0 = val;
    self.dictionary[@"v5_0"] = @(val);
}

- (BOOL) v5_1
{
    _v5_1 = [self.dictionary[@"v5_1"] boolValue];
    return _v5_1;
}

- (void) setV5_1: (BOOL) val
{
    _v5_1 = val;
    self.dictionary[@"v5_1"] = @(val);
}

@end
