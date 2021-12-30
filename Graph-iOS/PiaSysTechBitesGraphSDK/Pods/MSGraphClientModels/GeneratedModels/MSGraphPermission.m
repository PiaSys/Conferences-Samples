// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPermission()
{
    MSGraphIdentitySet* _grantedTo;
    MSGraphItemReference* _inheritedFrom;
    MSGraphSharingInvitation* _invitation;
    MSGraphSharingLink* _link;
    NSArray* _roles;
    NSString* _shareId;
}
@end

@implementation MSGraphPermission

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.permission";
    }
    return self;
}
- (MSGraphIdentitySet*) grantedTo
{
    if(!_grantedTo){
        _grantedTo = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"grantedTo"]];
    }
    return _grantedTo;
}

- (void) setGrantedTo: (MSGraphIdentitySet*) val
{
    _grantedTo = val;
    self.dictionary[@"grantedTo"] = val;
}

- (MSGraphItemReference*) inheritedFrom
{
    if(!_inheritedFrom){
        _inheritedFrom = [[MSGraphItemReference alloc] initWithDictionary: self.dictionary[@"inheritedFrom"]];
    }
    return _inheritedFrom;
}

- (void) setInheritedFrom: (MSGraphItemReference*) val
{
    _inheritedFrom = val;
    self.dictionary[@"inheritedFrom"] = val;
}

- (MSGraphSharingInvitation*) invitation
{
    if(!_invitation){
        _invitation = [[MSGraphSharingInvitation alloc] initWithDictionary: self.dictionary[@"invitation"]];
    }
    return _invitation;
}

- (void) setInvitation: (MSGraphSharingInvitation*) val
{
    _invitation = val;
    self.dictionary[@"invitation"] = val;
}

- (MSGraphSharingLink*) link
{
    if(!_link){
        _link = [[MSGraphSharingLink alloc] initWithDictionary: self.dictionary[@"link"]];
    }
    return _link;
}

- (void) setLink: (MSGraphSharingLink*) val
{
    _link = val;
    self.dictionary[@"link"] = val;
}

- (NSArray*) roles
{
    if([[NSNull null] isEqual:self.dictionary[@"roles"]])
    {
        return nil;
    }   
    return self.dictionary[@"roles"];
}

- (void) setRoles: (NSArray*) val
{
    self.dictionary[@"roles"] = val;
}

- (NSString*) shareId
{
    if([[NSNull null] isEqual:self.dictionary[@"shareId"]])
    {
        return nil;
    }   
    return self.dictionary[@"shareId"];
}

- (void) setShareId: (NSString*) val
{
    self.dictionary[@"shareId"] = val;
}


@end
