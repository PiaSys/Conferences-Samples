// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFollowupFlag()
{
    MSGraphDateTimeTimeZone* _completedDateTime;
    MSGraphDateTimeTimeZone* _dueDateTime;
    MSGraphDateTimeTimeZone* _startDateTime;
    MSGraphFollowupFlagStatus* _flagStatus;
}
@end

@implementation MSGraphFollowupFlag

- (MSGraphDateTimeTimeZone*) completedDateTime
{
    if(!_completedDateTime){
        _completedDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"completedDateTime"]];
    }
    return _completedDateTime;
}

- (void) setCompletedDateTime: (MSGraphDateTimeTimeZone*) val
{
    _completedDateTime = val;
    self.dictionary[@"completedDateTime"] = val;
}

- (MSGraphDateTimeTimeZone*) dueDateTime
{
    if(!_dueDateTime){
        _dueDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"dueDateTime"]];
    }
    return _dueDateTime;
}

- (void) setDueDateTime: (MSGraphDateTimeTimeZone*) val
{
    _dueDateTime = val;
    self.dictionary[@"dueDateTime"] = val;
}

- (MSGraphDateTimeTimeZone*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (MSGraphDateTimeTimeZone*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = val;
}

- (MSGraphFollowupFlagStatus*) flagStatus
{
    if(!_flagStatus){
        _flagStatus = [self.dictionary[@"flagStatus"] toMSGraphFollowupFlagStatus];
    }
    return _flagStatus;
}

- (void) setFlagStatus: (MSGraphFollowupFlagStatus*) val
{
    _flagStatus = val;
    self.dictionary[@"flagStatus"] = val;
}

@end
