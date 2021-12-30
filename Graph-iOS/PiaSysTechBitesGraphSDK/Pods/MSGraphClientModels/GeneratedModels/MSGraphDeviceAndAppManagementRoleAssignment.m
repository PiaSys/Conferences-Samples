// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceAndAppManagementRoleAssignment()
{
    NSArray* _members;
}
@end

@implementation MSGraphDeviceAndAppManagementRoleAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceAndAppManagementRoleAssignment";
    }
    return self;
}
- (NSArray*) members
{
    if([[NSNull null] isEqual:self.dictionary[@"members"]])
    {
        return nil;
    }   
    return self.dictionary[@"members"];
}

- (void) setMembers: (NSArray*) val
{
    self.dictionary[@"members"] = val;
}


@end
