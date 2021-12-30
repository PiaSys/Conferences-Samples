// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOmaSettingBoolean()
{
    BOOL _value;
}
@end

@implementation MSGraphOmaSettingBoolean

- (BOOL) value
{
    _value = [self.dictionary[@"value"] boolValue];
    return _value;
}

- (void) setValue: (BOOL) val
{
    _value = val;
    self.dictionary[@"value"] = @(val);
}

@end
