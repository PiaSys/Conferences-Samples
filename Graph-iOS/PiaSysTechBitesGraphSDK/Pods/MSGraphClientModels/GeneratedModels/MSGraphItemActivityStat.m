// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemActivityStat()
{
    NSDate* _startDateTime;
    NSDate* _endDateTime;
    MSGraphItemActionStat* _access;
    MSGraphItemActionStat* _create;
    MSGraphItemActionStat* _delete;
    MSGraphItemActionStat* _edit;
    MSGraphItemActionStat* _move;
    BOOL _isTrending;
    MSGraphIncompleteData* _incompleteData;
    NSArray* _activities;
}
@end

@implementation MSGraphItemActivityStat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.itemActivityStat";
    }
    return self;
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

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (MSGraphItemActionStat*) access
{
    if(!_access){
        _access = [[MSGraphItemActionStat alloc] initWithDictionary: self.dictionary[@"access"]];
    }
    return _access;
}

- (void) setAccess: (MSGraphItemActionStat*) val
{
    _access = val;
    self.dictionary[@"access"] = val;
}

- (MSGraphItemActionStat*) create
{
    if(!_create){
        _create = [[MSGraphItemActionStat alloc] initWithDictionary: self.dictionary[@"create"]];
    }
    return _create;
}

- (void) setCreate: (MSGraphItemActionStat*) val
{
    _create = val;
    self.dictionary[@"create"] = val;
}

- (MSGraphItemActionStat*) delete
{
    if(!_delete){
        _delete = [[MSGraphItemActionStat alloc] initWithDictionary: self.dictionary[@"delete"]];
    }
    return _delete;
}

- (void) setDelete: (MSGraphItemActionStat*) val
{
    _delete = val;
    self.dictionary[@"delete"] = val;
}

- (MSGraphItemActionStat*) edit
{
    if(!_edit){
        _edit = [[MSGraphItemActionStat alloc] initWithDictionary: self.dictionary[@"edit"]];
    }
    return _edit;
}

- (void) setEdit: (MSGraphItemActionStat*) val
{
    _edit = val;
    self.dictionary[@"edit"] = val;
}

- (MSGraphItemActionStat*) move
{
    if(!_move){
        _move = [[MSGraphItemActionStat alloc] initWithDictionary: self.dictionary[@"move"]];
    }
    return _move;
}

- (void) setMove: (MSGraphItemActionStat*) val
{
    _move = val;
    self.dictionary[@"move"] = val;
}

- (BOOL) isTrending
{
    _isTrending = [self.dictionary[@"isTrending"] boolValue];
    return _isTrending;
}

- (void) setIsTrending: (BOOL) val
{
    _isTrending = val;
    self.dictionary[@"isTrending"] = @(val);
}

- (MSGraphIncompleteData*) incompleteData
{
    if(!_incompleteData){
        _incompleteData = [[MSGraphIncompleteData alloc] initWithDictionary: self.dictionary[@"incompleteData"]];
    }
    return _incompleteData;
}

- (void) setIncompleteData: (MSGraphIncompleteData*) val
{
    _incompleteData = val;
    self.dictionary[@"incompleteData"] = val;
}

- (NSArray*) activities
{
    if(!_activities){
        
    NSMutableArray *activitiesResult = [NSMutableArray array];
    NSArray *activities = self.dictionary[@"activities"];

    if ([activities isKindOfClass:[NSArray class]]){
        for (id tempItemActivity in activities){
            [activitiesResult addObject:tempItemActivity];
        }
    }

    _activities = activitiesResult;
        
    }
    return _activities;
}

- (void) setActivities: (NSArray*) val
{
    _activities = val;
    self.dictionary[@"activities"] = val;
}


@end
