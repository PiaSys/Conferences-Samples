// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRgbColor()
{
    Byte _r;
    Byte _g;
    Byte _b;
}
@end

@implementation MSGraphRgbColor

- (Byte) r
{
    _r = self.dictionary[@"r"];
    return _r;
}

- (void) setR: (Byte) val
{
    _r = val;
    self.dictionary[@"r"] = @(val);
}

- (Byte) g
{
    _g = self.dictionary[@"g"];
    return _g;
}

- (void) setG: (Byte) val
{
    _g = val;
    self.dictionary[@"g"] = @(val);
}

- (Byte) b
{
    _b = self.dictionary[@"b"];
    return _b;
}

- (void) setB: (Byte) val
{
    _b = val;
    self.dictionary[@"b"] = @(val);
}

@end
