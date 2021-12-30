// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRoleDefinition()
{
    NSString* _displayName;
    NSString* _roleDefinitionDescription;
    NSArray* _rolePermissions;
    BOOL _isBuiltIn;
    NSArray* _roleAssignments;
}
@end

@implementation MSGraphRoleDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.roleDefinition";
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

- (NSString*) roleDefinitionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setRoleDefinitionDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) rolePermissions
{
    if(!_rolePermissions){
        
    NSMutableArray *rolePermissionsResult = [NSMutableArray array];
    NSArray *rolePermissions = self.dictionary[@"rolePermissions"];

    if ([rolePermissions isKindOfClass:[NSArray class]]){
        for (id tempRolePermission in rolePermissions){
            [rolePermissionsResult addObject:tempRolePermission];
        }
    }

    _rolePermissions = rolePermissionsResult;
        
    }
    return _rolePermissions;
}

- (void) setRolePermissions: (NSArray*) val
{
    _rolePermissions = val;
    self.dictionary[@"rolePermissions"] = val;
}

- (BOOL) isBuiltIn
{
    _isBuiltIn = [self.dictionary[@"isBuiltIn"] boolValue];
    return _isBuiltIn;
}

- (void) setIsBuiltIn: (BOOL) val
{
    _isBuiltIn = val;
    self.dictionary[@"isBuiltIn"] = @(val);
}

- (NSArray*) roleAssignments
{
    if(!_roleAssignments){
        
    NSMutableArray *roleAssignmentsResult = [NSMutableArray array];
    NSArray *roleAssignments = self.dictionary[@"roleAssignments"];

    if ([roleAssignments isKindOfClass:[NSArray class]]){
        for (id tempRoleAssignment in roleAssignments){
            [roleAssignmentsResult addObject:tempRoleAssignment];
        }
    }

    _roleAssignments = roleAssignmentsResult;
        
    }
    return _roleAssignments;
}

- (void) setRoleAssignments: (NSArray*) val
{
    _roleAssignments = val;
    self.dictionary[@"roleAssignments"] = val;
}


@end
