// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIncompleteData()
{
    NSDate* _missingDataBeforeDateTime;
    BOOL _wasThrottled;
}
@end

@implementation MSGraphIncompleteData

- (NSDate*) missingDataBeforeDateTime
{
    if(!_missingDataBeforeDateTime){
        _missingDataBeforeDateTime = [NSDate ms_dateFromString: self.dictionary[@"missingDataBeforeDateTime"]];
    }
    return _missingDataBeforeDateTime;
}

- (void) setMissingDataBeforeDateTime: (NSDate*) val
{
    _missingDataBeforeDateTime = val;
    self.dictionary[@"missingDataBeforeDateTime"] = [val ms_toString];
}

- (BOOL) wasThrottled
{
    _wasThrottled = [self.dictionary[@"wasThrottled"] boolValue];
    return _wasThrottled;
}

- (void) setWasThrottled: (BOOL) val
{
    _wasThrottled = val;
    self.dictionary[@"wasThrottled"] = @(val);
}

@end
