// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRoleAssignment()
{
    NSString* _displayName;
    NSString* _roleAssignmentDescription;
    NSArray* _resourceScopes;
    MSGraphRoleDefinition* _roleDefinition;
}
@end

@implementation MSGraphRoleAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.roleAssignment";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) roleAssignmentDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setRoleAssignmentDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) resourceScopes
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceScopes"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceScopes"];
}

- (void) setResourceScopes: (NSArray*) val
{
    self.dictionary[@"resourceScopes"] = val;
}

- (MSGraphRoleDefinition*) roleDefinition
{
    if(!_roleDefinition){
        _roleDefinition = [[MSGraphRoleDefinition alloc] initWithDictionary: self.dictionary[@"roleDefinition"]];
    }
    return _roleDefinition;
}

- (void) setRoleDefinition: (MSGraphRoleDefinition*) val
{
    _roleDefinition = val;
    self.dictionary[@"roleDefinition"] = val;
}


@end
