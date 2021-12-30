// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationRoot()
{
    NSArray* _classes;
    NSArray* _schools;
    NSArray* _users;
    MSGraphEducationUser* _me;
}
@end

@implementation MSGraphEducationRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationRoot";
    }
    return self;
}
- (NSArray*) classes
{
    if(!_classes){
        
    NSMutableArray *classesResult = [NSMutableArray array];
    NSArray *classes = self.dictionary[@"classes"];

    if ([classes isKindOfClass:[NSArray class]]){
        for (id tempEducationClass in classes){
            [classesResult addObject:tempEducationClass];
        }
    }

    _classes = classesResult;
        
    }
    return _classes;
}

- (void) setClasses: (NSArray*) val
{
    _classes = val;
    self.dictionary[@"classes"] = val;
}

- (NSArray*) schools
{
    if(!_schools){
        
    NSMutableArray *schoolsResult = [NSMutableArray array];
    NSArray *schools = self.dictionary[@"schools"];

    if ([schools isKindOfClass:[NSArray class]]){
        for (id tempEducationSchool in schools){
            [schoolsResult addObject:tempEducationSchool];
        }
    }

    _schools = schoolsResult;
        
    }
    return _schools;
}

- (void) setSchools: (NSArray*) val
{
    _schools = val;
    self.dictionary[@"schools"] = val;
}

- (NSArray*) users
{
    if(!_users){
        
    NSMutableArray *usersResult = [NSMutableArray array];
    NSArray *users = self.dictionary[@"users"];

    if ([users isKindOfClass:[NSArray class]]){
        for (id tempEducationUser in users){
            [usersResult addObject:tempEducationUser];
        }
    }

    _users = usersResult;
        
    }
    return _users;
}

- (void) setUsers: (NSArray*) val
{
    _users = val;
    self.dictionary[@"users"] = val;
}

- (MSGraphEducationUser*) me
{
    if(!_me){
        _me = [[MSGraphEducationUser alloc] initWithDictionary: self.dictionary[@"me"]];
    }
    return _me;
}

- (void) setMe: (MSGraphEducationUser*) val
{
    _me = val;
    self.dictionary[@"me"] = val;
}


@end
