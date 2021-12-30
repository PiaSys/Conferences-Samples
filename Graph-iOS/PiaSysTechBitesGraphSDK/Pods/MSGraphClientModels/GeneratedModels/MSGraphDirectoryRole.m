// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDirectoryRole()
{
    NSString* _directoryRoleDescription;
    NSString* _displayName;
    NSString* _roleTemplateId;
    NSArray* _members;
}
@end

@implementation MSGraphDirectoryRole

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.directoryRole";
    }
    return self;
}
- (NSString*) directoryRoleDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDirectoryRoleDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (NSString*) roleTemplateId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleTemplateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleTemplateId"];
}

- (void) setRoleTemplateId: (NSString*) val
{
    self.dictionary[@"roleTemplateId"] = val;
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in members){
            [membersResult addObject:tempDirectoryObject];
        }
    }

    _members = membersResult;
        
    }
    return _members;
}

- (void) setMembers: (NSArray*) val
{
    _members = val;
    self.dictionary[@"members"] = val;
}


@end
