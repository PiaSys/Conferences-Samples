// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphActivityHistoryItem()
{
    MSGraphStatus* _status;
    int32_t _activeDurationSeconds;
    NSDate* _createdDateTime;
    NSDate* _lastActiveDateTime;
    NSDate* _lastModifiedDateTime;
    NSDate* _expirationDateTime;
    NSDate* _startedDateTime;
    NSString* _userTimezone;
    MSGraphUserActivity* _activity;
}
@end

@implementation MSGraphActivityHistoryItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.activityHistoryItem";
    }
    return self;
}
- (MSGraphStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (int32_t) activeDurationSeconds
{
    _activeDurationSeconds = [self.dictionary[@"activeDurationSeconds"] intValue];
    return _activeDurationSeconds;
}

- (void) setActiveDurationSeconds: (int32_t) val
{
    _activeDurationSeconds = val;
    self.dictionary[@"activeDurationSeconds"] = @(val);
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSDate*) lastActiveDateTime
{
    if(!_lastActiveDateTime){
        _lastActiveDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastActiveDateTime"]];
    }
    return _lastActiveDateTime;
}

- (void) setLastActiveDateTime: (NSDate*) val
{
    _lastActiveDateTime = val;
    self.dictionary[@"lastActiveDateTime"] = [val ms_toString];
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSDate*) startedDateTime
{
    if(!_startedDateTime){
        _startedDateTime = [NSDate ms_dateFromString: self.dictionary[@"startedDateTime"]];
    }
    return _startedDateTime;
}

- (void) setStartedDateTime: (NSDate*) val
{
    _startedDateTime = val;
    self.dictionary[@"startedDateTime"] = [val ms_toString];
}

- (NSString*) userTimezone
{
    if([[NSNull null] isEqual:self.dictionary[@"userTimezone"]])
    {
        return nil;
    }   
    return self.dictionary[@"userTimezone"];
}

- (void) setUserTimezone: (NSString*) val
{
    self.dictionary[@"userTimezone"] = val;
}

- (MSGraphUserActivity*) activity
{
    if(!_activity){
        _activity = [[MSGraphUserActivity alloc] initWithDictionary: self.dictionary[@"activity"]];
    }
    return _activity;
}

- (void) setActivity: (MSGraphUserActivity*) val
{
    _activity = val;
    self.dictionary[@"activity"] = val;
}


@end
