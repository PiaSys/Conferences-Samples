// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationSchool()
{
    NSString* _principalEmail;
    NSString* _principalName;
    NSString* _externalPrincipalId;
    NSString* _lowestGrade;
    NSString* _highestGrade;
    NSString* _schoolNumber;
    NSString* _externalId;
    NSString* _phone;
    NSString* _fax;
    MSGraphIdentitySet* _createdBy;
    MSGraphPhysicalAddress* _address;
    NSArray* _classes;
    NSArray* _users;
}
@end

@implementation MSGraphEducationSchool

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationSchool";
    }
    return self;
}
- (NSString*) principalEmail
{
    if([[NSNull null] isEqual:self.dictionary[@"principalEmail"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalEmail"];
}

- (void) setPrincipalEmail: (NSString*) val
{
    self.dictionary[@"principalEmail"] = val;
}

- (NSString*) principalName
{
    if([[NSNull null] isEqual:self.dictionary[@"principalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalName"];
}

- (void) setPrincipalName: (NSString*) val
{
    self.dictionary[@"principalName"] = val;
}

- (NSString*) externalPrincipalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalPrincipalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalPrincipalId"];
}

- (void) setExternalPrincipalId: (NSString*) val
{
    self.dictionary[@"externalPrincipalId"] = val;
}

- (NSString*) lowestGrade
{
    if([[NSNull null] isEqual:self.dictionary[@"lowestGrade"]])
    {
        return nil;
    }   
    return self.dictionary[@"lowestGrade"];
}

- (void) setLowestGrade: (NSString*) val
{
    self.dictionary[@"lowestGrade"] = val;
}

- (NSString*) highestGrade
{
    if([[NSNull null] isEqual:self.dictionary[@"highestGrade"]])
    {
        return nil;
    }   
    return self.dictionary[@"highestGrade"];
}

- (void) setHighestGrade: (NSString*) val
{
    self.dictionary[@"highestGrade"] = val;
}

- (NSString*) schoolNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"schoolNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"schoolNumber"];
}

- (void) setSchoolNumber: (NSString*) val
{
    self.dictionary[@"schoolNumber"] = val;
}

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

- (NSString*) phone
{
    if([[NSNull null] isEqual:self.dictionary[@"phone"]])
    {
        return nil;
    }   
    return self.dictionary[@"phone"];
}

- (void) setPhone: (NSString*) val
{
    self.dictionary[@"phone"] = val;
}

- (NSString*) fax
{
    if([[NSNull null] isEqual:self.dictionary[@"fax"]])
    {
        return nil;
    }   
    return self.dictionary[@"fax"];
}

- (void) setFax: (NSString*) val
{
    self.dictionary[@"fax"] = val;
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (MSGraphPhysicalAddress*) address
{
    if(!_address){
        _address = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"address"]];
    }
    return _address;
}

- (void) setAddress: (MSGraphPhysicalAddress*) val
{
    _address = val;
    self.dictionary[@"address"] = val;
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


@end
