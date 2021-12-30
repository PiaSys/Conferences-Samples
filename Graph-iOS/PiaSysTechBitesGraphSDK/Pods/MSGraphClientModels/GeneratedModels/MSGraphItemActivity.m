// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemActivity()
{
    MSGraphAccessAction* _access;
    NSDate* _activityDateTime;
    MSGraphIdentitySet* _actor;
    MSGraphDriveItem* _driveItem;
}
@end

@implementation MSGraphItemActivity

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.itemActivity";
    }
    return self;
}
- (MSGraphAccessAction*) access
{
    if(!_access){
        _access = [[MSGraphAccessAction alloc] initWithDictionary: self.dictionary[@"access"]];
    }
    return _access;
}

- (void) setAccess: (MSGraphAccessAction*) val
{
    _access = val;
    self.dictionary[@"access"] = val;
}

- (NSDate*) activityDateTime
{
    if(!_activityDateTime){
        _activityDateTime = [NSDate ms_dateFromString: self.dictionary[@"activityDateTime"]];
    }
    return _activityDateTime;
}

- (void) setActivityDateTime: (NSDate*) val
{
    _activityDateTime = val;
    self.dictionary[@"activityDateTime"] = [val ms_toString];
}

- (MSGraphIdentitySet*) actor
{
    if(!_actor){
        _actor = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"actor"]];
    }
    return _actor;
}

- (void) setActor: (MSGraphIdentitySet*) val
{
    _actor = val;
    self.dictionary[@"actor"] = val;
}

- (MSGraphDriveItem*) driveItem
{
    if(!_driveItem){
        _driveItem = [[MSGraphDriveItem alloc] initWithDictionary: self.dictionary[@"driveItem"]];
    }
    return _driveItem;
}

- (void) setDriveItem: (MSGraphDriveItem*) val
{
    _driveItem = val;
    self.dictionary[@"driveItem"] = val;
}


@end
