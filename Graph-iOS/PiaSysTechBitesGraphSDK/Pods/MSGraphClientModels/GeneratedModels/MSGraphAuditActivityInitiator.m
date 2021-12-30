// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuditActivityInitiator()
{
    MSGraphUserIdentity* _user;
    MSGraphAppIdentity* _app;
}
@end

@implementation MSGraphAuditActivityInitiator

- (MSGraphUserIdentity*) user
{
    if(!_user){
        _user = [[MSGraphUserIdentity alloc] initWithDictionary: self.dictionary[@"user"]];
    }
    return _user;
}

- (void) setUser: (MSGraphUserIdentity*) val
{
    _user = val;
    self.dictionary[@"user"] = val;
}

- (MSGraphAppIdentity*) app
{
    if(!_app){
        _app = [[MSGraphAppIdentity alloc] initWithDictionary: self.dictionary[@"app"]];
    }
    return _app;
}

- (void) setApp: (MSGraphAppIdentity*) val
{
    _app = val;
    self.dictionary[@"app"] = val;
}

@end
