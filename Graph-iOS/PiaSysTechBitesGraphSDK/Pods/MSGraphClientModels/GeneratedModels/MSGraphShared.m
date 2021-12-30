// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphShared()
{
    MSGraphIdentitySet* _owner;
    NSString* _scope;
    MSGraphIdentitySet* _sharedBy;
    NSDate* _sharedDateTime;
}
@end

@implementation MSGraphShared

- (MSGraphIdentitySet*) owner
{
    if(!_owner){
        _owner = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"owner"]];
    }
    return _owner;
}

- (void) setOwner: (MSGraphIdentitySet*) val
{
    _owner = val;
    self.dictionary[@"owner"] = val;
}

- (NSString*) scope
{
    if([[NSNull null] isEqual:self.dictionary[@"scope"]])
    {
        return nil;
    }   
    return self.dictionary[@"scope"];
}

- (void) setScope: (NSString*) val
{
    self.dictionary[@"scope"] = val;
}

- (MSGraphIdentitySet*) sharedBy
{
    if(!_sharedBy){
        _sharedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"sharedBy"]];
    }
    return _sharedBy;
}

- (void) setSharedBy: (MSGraphIdentitySet*) val
{
    _sharedBy = val;
    self.dictionary[@"sharedBy"] = val;
}

- (NSDate*) sharedDateTime
{
    if(!_sharedDateTime){
        _sharedDateTime = [NSDate ms_dateFromString: self.dictionary[@"sharedDateTime"]];
    }
    return _sharedDateTime;
}

- (void) setSharedDateTime: (NSDate*) val
{
    _sharedDateTime = val;
    self.dictionary[@"sharedDateTime"] = [val ms_toString];
}

@end
