// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCommsNotifications()
{
    NSArray* _value;
}
@end

@implementation MSGraphCommsNotifications

- (NSArray*) value
{
    if(!_value){
        
    NSMutableArray *valueResult = [NSMutableArray array];
    NSArray *value = self.dictionary[@"value"];

    if ([value isKindOfClass:[NSArray class]]){
        for (id tempCommsNotification in value){
            [valueResult addObject:tempCommsNotification];
        }
    }

    _value = valueResult;
        
    }
    return _value;
}

- (void) setValue: (NSArray*) val
{
    _value = val;
    self.dictionary[@"value"] = val;
}

@end
