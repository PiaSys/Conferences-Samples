// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOmaSettingFloatingPoint()
{
    double _value;
}
@end

@implementation MSGraphOmaSettingFloatingPoint

- (double) value
{
    _value = [self.dictionary[@"value"] floatValue];
    return _value;
}

- (void) setValue: (double) val
{
    _value = val;
    self.dictionary[@"value"] = @(val);
}

@end
