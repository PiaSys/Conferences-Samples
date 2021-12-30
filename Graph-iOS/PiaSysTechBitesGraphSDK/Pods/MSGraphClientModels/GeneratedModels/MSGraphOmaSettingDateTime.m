// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOmaSettingDateTime()
{
    NSDate* _value;
}
@end

@implementation MSGraphOmaSettingDateTime

- (NSDate*) value
{
    if(!_value){
        _value = [NSDate ms_dateFromString: self.dictionary[@"value"]];
    }
    return _value;
}

- (void) setValue: (NSDate*) val
{
    _value = val;
    self.dictionary[@"value"] = [val ms_toString];
}

@end
