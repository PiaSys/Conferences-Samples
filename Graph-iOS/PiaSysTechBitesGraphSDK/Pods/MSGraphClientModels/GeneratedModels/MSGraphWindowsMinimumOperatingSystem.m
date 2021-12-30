// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsMinimumOperatingSystem()
{
    BOOL _v8_0;
    BOOL _v8_1;
    BOOL _v10_0;
}
@end

@implementation MSGraphWindowsMinimumOperatingSystem

- (BOOL) v8_0
{
    _v8_0 = [self.dictionary[@"v8_0"] boolValue];
    return _v8_0;
}

- (void) setV8_0: (BOOL) val
{
    _v8_0 = val;
    self.dictionary[@"v8_0"] = @(val);
}

- (BOOL) v8_1
{
    _v8_1 = [self.dictionary[@"v8_1"] boolValue];
    return _v8_1;
}

- (void) setV8_1: (BOOL) val
{
    _v8_1 = val;
    self.dictionary[@"v8_1"] = @(val);
}

- (BOOL) v10_0
{
    _v10_0 = [self.dictionary[@"v10_0"] boolValue];
    return _v10_0;
}

- (void) setV10_0: (BOOL) val
{
    _v10_0 = val;
    self.dictionary[@"v10_0"] = @(val);
}

@end
