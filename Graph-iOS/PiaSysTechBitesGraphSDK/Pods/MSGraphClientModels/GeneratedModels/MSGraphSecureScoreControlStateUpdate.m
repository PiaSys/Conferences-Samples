// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSecureScoreControlStateUpdate()
{
    NSString* _assignedTo;
    NSString* _comment;
    NSString* _state;
    NSString* _updatedBy;
    NSDate* _updatedDateTime;
}
@end

@implementation MSGraphSecureScoreControlStateUpdate

- (NSString*) assignedTo
{
    if([[NSNull null] isEqual:self.dictionary[@"assignedTo"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignedTo"];
}

- (void) setAssignedTo: (NSString*) val
{
    self.dictionary[@"assignedTo"] = val;
}

- (NSString*) comment
{
    if([[NSNull null] isEqual:self.dictionary[@"comment"]])
    {
        return nil;
    }   
    return self.dictionary[@"comment"];
}

- (void) setComment: (NSString*) val
{
    self.dictionary[@"comment"] = val;
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

- (NSString*) updatedBy
{
    if([[NSNull null] isEqual:self.dictionary[@"updatedBy"]])
    {
        return nil;
    }   
    return self.dictionary[@"updatedBy"];
}

- (void) setUpdatedBy: (NSString*) val
{
    self.dictionary[@"updatedBy"] = val;
}

- (NSDate*) updatedDateTime
{
    if(!_updatedDateTime){
        _updatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"updatedDateTime"]];
    }
    return _updatedDateTime;
}

- (void) setUpdatedDateTime: (NSDate*) val
{
    _updatedDateTime = val;
    self.dictionary[@"updatedDateTime"] = [val ms_toString];
}

@end
