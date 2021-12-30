// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlertHistoryState()
{
    NSString* _appId;
    NSString* _assignedTo;
    NSArray* _comments;
    MSGraphAlertFeedback* _feedback;
    MSGraphAlertStatus* _status;
    NSDate* _updatedDateTime;
    NSString* _user;
}
@end

@implementation MSGraphAlertHistoryState

- (NSString*) appId
{
    if([[NSNull null] isEqual:self.dictionary[@"appId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appId"];
}

- (void) setAppId: (NSString*) val
{
    self.dictionary[@"appId"] = val;
}

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

- (NSArray*) comments
{
    if([[NSNull null] isEqual:self.dictionary[@"comments"]])
    {
        return nil;
    }   
    return self.dictionary[@"comments"];
}

- (void) setComments: (NSArray*) val
{
    self.dictionary[@"comments"] = val;
}

- (MSGraphAlertFeedback*) feedback
{
    if(!_feedback){
        _feedback = [self.dictionary[@"feedback"] toMSGraphAlertFeedback];
    }
    return _feedback;
}

- (void) setFeedback: (MSGraphAlertFeedback*) val
{
    _feedback = val;
    self.dictionary[@"feedback"] = val;
}

- (MSGraphAlertStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphAlertStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphAlertStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
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

- (NSString*) user
{
    if([[NSNull null] isEqual:self.dictionary[@"user"]])
    {
        return nil;
    }   
    return self.dictionary[@"user"];
}

- (void) setUser: (NSString*) val
{
    self.dictionary[@"user"] = val;
}

@end
