// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerAssignment()
{
    MSGraphIdentitySet* _assignedBy;
    NSDate* _assignedDateTime;
    NSString* _orderHint;
}
@end

@implementation MSGraphPlannerAssignment

- (MSGraphIdentitySet*) assignedBy
{
    if(!_assignedBy){
        _assignedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"assignedBy"]];
    }
    return _assignedBy;
}

- (void) setAssignedBy: (MSGraphIdentitySet*) val
{
    _assignedBy = val;
    self.dictionary[@"assignedBy"] = val;
}

- (NSDate*) assignedDateTime
{
    if(!_assignedDateTime){
        _assignedDateTime = [NSDate ms_dateFromString: self.dictionary[@"assignedDateTime"]];
    }
    return _assignedDateTime;
}

- (void) setAssignedDateTime: (NSDate*) val
{
    _assignedDateTime = val;
    self.dictionary[@"assignedDateTime"] = [val ms_toString];
}

- (NSString*) orderHint
{
    if([[NSNull null] isEqual:self.dictionary[@"orderHint"]])
    {
        return nil;
    }   
    return self.dictionary[@"orderHint"];
}

- (void) setOrderHint: (NSString*) val
{
    self.dictionary[@"orderHint"] = val;
}

@end
