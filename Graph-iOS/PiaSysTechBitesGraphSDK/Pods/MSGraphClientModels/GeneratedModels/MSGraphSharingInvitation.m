// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharingInvitation()
{
    NSString* _email;
    MSGraphIdentitySet* _invitedBy;
    NSString* _redeemedBy;
    BOOL _signInRequired;
}
@end

@implementation MSGraphSharingInvitation

- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (MSGraphIdentitySet*) invitedBy
{
    if(!_invitedBy){
        _invitedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"invitedBy"]];
    }
    return _invitedBy;
}

- (void) setInvitedBy: (MSGraphIdentitySet*) val
{
    _invitedBy = val;
    self.dictionary[@"invitedBy"] = val;
}

- (NSString*) redeemedBy
{
    if([[NSNull null] isEqual:self.dictionary[@"redeemedBy"]])
    {
        return nil;
    }   
    return self.dictionary[@"redeemedBy"];
}

- (void) setRedeemedBy: (NSString*) val
{
    self.dictionary[@"redeemedBy"] = val;
}

- (BOOL) signInRequired
{
    _signInRequired = [self.dictionary[@"signInRequired"] boolValue];
    return _signInRequired;
}

- (void) setSignInRequired: (BOOL) val
{
    _signInRequired = val;
    self.dictionary[@"signInRequired"] = @(val);
}

@end
