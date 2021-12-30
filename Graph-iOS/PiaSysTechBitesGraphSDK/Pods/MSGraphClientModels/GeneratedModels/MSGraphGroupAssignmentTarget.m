// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGroupAssignmentTarget()
{
    NSString* _groupId;
}
@end

@implementation MSGraphGroupAssignmentTarget

- (NSString*) groupId
{
    if([[NSNull null] isEqual:self.dictionary[@"groupId"]])
    {
        return nil;
    }   
    return self.dictionary[@"groupId"];
}

- (void) setGroupId: (NSString*) val
{
    self.dictionary[@"groupId"] = val;
}

@end
