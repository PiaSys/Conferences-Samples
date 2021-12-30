// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOmaSettingInteger()
{
    int32_t _value;
}
@end

@implementation MSGraphOmaSettingInteger

- (int32_t) value
{
    _value = [self.dictionary[@"value"] intValue];
    return _value;
}

- (void) setValue: (int32_t) val
{
    _value = val;
    self.dictionary[@"value"] = @(val);
}

@end
