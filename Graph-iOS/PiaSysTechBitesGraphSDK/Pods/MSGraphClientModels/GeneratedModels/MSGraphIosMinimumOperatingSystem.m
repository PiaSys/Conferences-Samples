// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosMinimumOperatingSystem()
{
    BOOL _v8_0;
    BOOL _v9_0;
    BOOL _v10_0;
    BOOL _v11_0;
    BOOL _v12_0;
    BOOL _v13_0;
}
@end

@implementation MSGraphIosMinimumOperatingSystem

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

- (BOOL) v9_0
{
    _v9_0 = [self.dictionary[@"v9_0"] boolValue];
    return _v9_0;
}

- (void) setV9_0: (BOOL) val
{
    _v9_0 = val;
    self.dictionary[@"v9_0"] = @(val);
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

- (BOOL) v11_0
{
    _v11_0 = [self.dictionary[@"v11_0"] boolValue];
    return _v11_0;
}

- (void) setV11_0: (BOOL) val
{
    _v11_0 = val;
    self.dictionary[@"v11_0"] = @(val);
}

- (BOOL) v12_0
{
    _v12_0 = [self.dictionary[@"v12_0"] boolValue];
    return _v12_0;
}

- (void) setV12_0: (BOOL) val
{
    _v12_0 = val;
    self.dictionary[@"v12_0"] = @(val);
}

- (BOOL) v13_0
{
    _v13_0 = [self.dictionary[@"v13_0"] boolValue];
    return _v13_0;
}

- (void) setV13_0: (BOOL) val
{
    _v13_0 = val;
    self.dictionary[@"v13_0"] = @(val);
}

@end
