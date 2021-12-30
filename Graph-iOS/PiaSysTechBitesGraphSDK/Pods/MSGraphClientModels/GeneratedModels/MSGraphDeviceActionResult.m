// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceActionResult()
{
    NSString* _actionName;
    MSGraphActionState* _actionState;
    NSDate* _startDateTime;
    NSDate* _lastUpdatedDateTime;
}
@end

@implementation MSGraphDeviceActionResult

- (NSString*) actionName
{
    if([[NSNull null] isEqual:self.dictionary[@"actionName"]])
    {
        return nil;
    }   
    return self.dictionary[@"actionName"];
}

- (void) setActionName: (NSString*) val
{
    self.dictionary[@"actionName"] = val;
}

- (MSGraphActionState*) actionState
{
    if(!_actionState){
        _actionState = [self.dictionary[@"actionState"] toMSGraphActionState];
    }
    return _actionState;
}

- (void) setActionState: (MSGraphActionState*) val
{
    _actionState = val;
    self.dictionary[@"actionState"] = val;
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (NSDate*) lastUpdatedDateTime
{
    if(!_lastUpdatedDateTime){
        _lastUpdatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastUpdatedDateTime"]];
    }
    return _lastUpdatedDateTime;
}

- (void) setLastUpdatedDateTime: (NSDate*) val
{
    _lastUpdatedDateTime = val;
    self.dictionary[@"lastUpdatedDateTime"] = [val ms_toString];
}

@end
