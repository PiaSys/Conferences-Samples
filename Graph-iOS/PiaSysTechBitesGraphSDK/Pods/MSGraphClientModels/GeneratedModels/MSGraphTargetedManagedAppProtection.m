// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTargetedManagedAppProtection()
{
    BOOL _isAssigned;
    NSArray* _assignments;
}
@end

@implementation MSGraphTargetedManagedAppProtection

- (BOOL) isAssigned
{
    _isAssigned = [self.dictionary[@"isAssigned"] boolValue];
    return _isAssigned;
}

- (void) setIsAssigned: (BOOL) val
{
    _isAssigned = val;
    self.dictionary[@"isAssigned"] = @(val);
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempTargetedManagedAppPolicyAssignment in assignments){
            [assignmentsResult addObject:tempTargetedManagedAppPolicyAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}


@end
