// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphContact()
{
    NSString* _parentFolderId;
    NSDate* _birthday;
    NSString* _fileAs;
    NSString* _displayName;
    NSString* _givenName;
    NSString* _initials;
    NSString* _middleName;
    NSString* _nickName;
    NSString* _surname;
    NSString* _title;
    NSString* _yomiGivenName;
    NSString* _yomiSurname;
    NSString* _yomiCompanyName;
    NSString* _generation;
    NSArray* _emailAddresses;
    NSArray* _imAddresses;
    NSString* _jobTitle;
    NSString* _companyName;
    NSString* _department;
    NSString* _officeLocation;
    NSString* _profession;
    NSString* _businessHomePage;
    NSString* _assistantName;
    NSString* _manager;
    NSArray* _homePhones;
    NSString* _mobilePhone;
    NSArray* _businessPhones;
    MSGraphPhysicalAddress* _homeAddress;
    MSGraphPhysicalAddress* _businessAddress;
    MSGraphPhysicalAddress* _otherAddress;
    NSString* _spouseName;
    NSString* _personalNotes;
    NSArray* _children;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    MSGraphProfilePhoto* _photo;
    NSArray* _extensions;
}
@end

@implementation MSGraphContact

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.contact";
    }
    return self;
}
- (NSString*) parentFolderId
{
    if([[NSNull null] isEqual:self.dictionary[@"parentFolderId"]])
    {
        return nil;
    }   
    return self.dictionary[@"parentFolderId"];
}

- (void) setParentFolderId: (NSString*) val
{
    self.dictionary[@"parentFolderId"] = val;
}

- (NSDate*) birthday
{
    if(!_birthday){
        _birthday = [NSDate ms_dateFromString: self.dictionary[@"birthday"]];
    }
    return _birthday;
}

- (void) setBirthday: (NSDate*) val
{
    _birthday = val;
    self.dictionary[@"birthday"] = [val ms_toString];
}

- (NSString*) fileAs
{
    if([[NSNull null] isEqual:self.dictionary[@"fileAs"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileAs"];
}

- (void) setFileAs: (NSString*) val
{
    self.dictionary[@"fileAs"] = val;
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

- (NSString*) givenName
{
    if([[NSNull null] isEqual:self.dictionary[@"givenName"]])
    {
        return nil;
    }   
    return self.dictionary[@"givenName"];
}

- (void) setGivenName: (NSString*) val
{
    self.dictionary[@"givenName"] = val;
}

- (NSString*) initials
{
    if([[NSNull null] isEqual:self.dictionary[@"initials"]])
    {
        return nil;
    }   
    return self.dictionary[@"initials"];
}

- (void) setInitials: (NSString*) val
{
    self.dictionary[@"initials"] = val;
}

- (NSString*) middleName
{
    if([[NSNull null] isEqual:self.dictionary[@"middleName"]])
    {
        return nil;
    }   
    return self.dictionary[@"middleName"];
}

- (void) setMiddleName: (NSString*) val
{
    self.dictionary[@"middleName"] = val;
}

- (NSString*) nickName
{
    if([[NSNull null] isEqual:self.dictionary[@"nickName"]])
    {
        return nil;
    }   
    return self.dictionary[@"nickName"];
}

- (void) setNickName: (NSString*) val
{
    self.dictionary[@"nickName"] = val;
}

- (NSString*) surname
{
    if([[NSNull null] isEqual:self.dictionary[@"surname"]])
    {
        return nil;
    }   
    return self.dictionary[@"surname"];
}

- (void) setSurname: (NSString*) val
{
    self.dictionary[@"surname"] = val;
}

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSString*) yomiGivenName
{
    if([[NSNull null] isEqual:self.dictionary[@"yomiGivenName"]])
    {
        return nil;
    }   
    return self.dictionary[@"yomiGivenName"];
}

- (void) setYomiGivenName: (NSString*) val
{
    self.dictionary[@"yomiGivenName"] = val;
}

- (NSString*) yomiSurname
{
    if([[NSNull null] isEqual:self.dictionary[@"yomiSurname"]])
    {
        return nil;
    }   
    return self.dictionary[@"yomiSurname"];
}

- (void) setYomiSurname: (NSString*) val
{
    self.dictionary[@"yomiSurname"] = val;
}

- (NSString*) yomiCompanyName
{
    if([[NSNull null] isEqual:self.dictionary[@"yomiCompanyName"]])
    {
        return nil;
    }   
    return self.dictionary[@"yomiCompanyName"];
}

- (void) setYomiCompanyName: (NSString*) val
{
    self.dictionary[@"yomiCompanyName"] = val;
}

- (NSString*) generation
{
    if([[NSNull null] isEqual:self.dictionary[@"generation"]])
    {
        return nil;
    }   
    return self.dictionary[@"generation"];
}

- (void) setGeneration: (NSString*) val
{
    self.dictionary[@"generation"] = val;
}

- (NSArray*) emailAddresses
{
    if(!_emailAddresses){
        
    NSMutableArray *emailAddressesResult = [NSMutableArray array];
    NSArray *emailAddresses = self.dictionary[@"emailAddresses"];

    if ([emailAddresses isKindOfClass:[NSArray class]]){
        for (id tempEmailAddress in emailAddresses){
            [emailAddressesResult addObject:tempEmailAddress];
        }
    }

    _emailAddresses = emailAddressesResult;
        
    }
    return _emailAddresses;
}

- (void) setEmailAddresses: (NSArray*) val
{
    _emailAddresses = val;
    self.dictionary[@"emailAddresses"] = val;
}

- (NSArray*) imAddresses
{
    if([[NSNull null] isEqual:self.dictionary[@"imAddresses"]])
    {
        return nil;
    }   
    return self.dictionary[@"imAddresses"];
}

- (void) setImAddresses: (NSArray*) val
{
    self.dictionary[@"imAddresses"] = val;
}

- (NSString*) jobTitle
{
    if([[NSNull null] isEqual:self.dictionary[@"jobTitle"]])
    {
        return nil;
    }   
    return self.dictionary[@"jobTitle"];
}

- (void) setJobTitle: (NSString*) val
{
    self.dictionary[@"jobTitle"] = val;
}

- (NSString*) companyName
{
    if([[NSNull null] isEqual:self.dictionary[@"companyName"]])
    {
        return nil;
    }   
    return self.dictionary[@"companyName"];
}

- (void) setCompanyName: (NSString*) val
{
    self.dictionary[@"companyName"] = val;
}

- (NSString*) department
{
    if([[NSNull null] isEqual:self.dictionary[@"department"]])
    {
        return nil;
    }   
    return self.dictionary[@"department"];
}

- (void) setDepartment: (NSString*) val
{
    self.dictionary[@"department"] = val;
}

- (NSString*) officeLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"officeLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"officeLocation"];
}

- (void) setOfficeLocation: (NSString*) val
{
    self.dictionary[@"officeLocation"] = val;
}

- (NSString*) profession
{
    if([[NSNull null] isEqual:self.dictionary[@"profession"]])
    {
        return nil;
    }   
    return self.dictionary[@"profession"];
}

- (void) setProfession: (NSString*) val
{
    self.dictionary[@"profession"] = val;
}

- (NSString*) businessHomePage
{
    if([[NSNull null] isEqual:self.dictionary[@"businessHomePage"]])
    {
        return nil;
    }   
    return self.dictionary[@"businessHomePage"];
}

- (void) setBusinessHomePage: (NSString*) val
{
    self.dictionary[@"businessHomePage"] = val;
}

- (NSString*) assistantName
{
    if([[NSNull null] isEqual:self.dictionary[@"assistantName"]])
    {
        return nil;
    }   
    return self.dictionary[@"assistantName"];
}

- (void) setAssistantName: (NSString*) val
{
    self.dictionary[@"assistantName"] = val;
}

- (NSString*) manager
{
    if([[NSNull null] isEqual:self.dictionary[@"manager"]])
    {
        return nil;
    }   
    return self.dictionary[@"manager"];
}

- (void) setManager: (NSString*) val
{
    self.dictionary[@"manager"] = val;
}

- (NSArray*) homePhones
{
    if([[NSNull null] isEqual:self.dictionary[@"homePhones"]])
    {
        return nil;
    }   
    return self.dictionary[@"homePhones"];
}

- (void) setHomePhones: (NSArray*) val
{
    self.dictionary[@"homePhones"] = val;
}

- (NSString*) mobilePhone
{
    if([[NSNull null] isEqual:self.dictionary[@"mobilePhone"]])
    {
        return nil;
    }   
    return self.dictionary[@"mobilePhone"];
}

- (void) setMobilePhone: (NSString*) val
{
    self.dictionary[@"mobilePhone"] = val;
}

- (NSArray*) businessPhones
{
    if([[NSNull null] isEqual:self.dictionary[@"businessPhones"]])
    {
        return nil;
    }   
    return self.dictionary[@"businessPhones"];
}

- (void) setBusinessPhones: (NSArray*) val
{
    self.dictionary[@"businessPhones"] = val;
}

- (MSGraphPhysicalAddress*) homeAddress
{
    if(!_homeAddress){
        _homeAddress = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"homeAddress"]];
    }
    return _homeAddress;
}

- (void) setHomeAddress: (MSGraphPhysicalAddress*) val
{
    _homeAddress = val;
    self.dictionary[@"homeAddress"] = val;
}

- (MSGraphPhysicalAddress*) businessAddress
{
    if(!_businessAddress){
        _businessAddress = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"businessAddress"]];
    }
    return _businessAddress;
}

- (void) setBusinessAddress: (MSGraphPhysicalAddress*) val
{
    _businessAddress = val;
    self.dictionary[@"businessAddress"] = val;
}

- (MSGraphPhysicalAddress*) otherAddress
{
    if(!_otherAddress){
        _otherAddress = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"otherAddress"]];
    }
    return _otherAddress;
}

- (void) setOtherAddress: (MSGraphPhysicalAddress*) val
{
    _otherAddress = val;
    self.dictionary[@"otherAddress"] = val;
}

- (NSString*) spouseName
{
    if([[NSNull null] isEqual:self.dictionary[@"spouseName"]])
    {
        return nil;
    }   
    return self.dictionary[@"spouseName"];
}

- (void) setSpouseName: (NSString*) val
{
    self.dictionary[@"spouseName"] = val;
}

- (NSString*) personalNotes
{
    if([[NSNull null] isEqual:self.dictionary[@"personalNotes"]])
    {
        return nil;
    }   
    return self.dictionary[@"personalNotes"];
}

- (void) setPersonalNotes: (NSString*) val
{
    self.dictionary[@"personalNotes"] = val;
}

- (NSArray*) children
{
    if([[NSNull null] isEqual:self.dictionary[@"children"]])
    {
        return nil;
    }   
    return self.dictionary[@"children"];
}

- (void) setChildren: (NSArray*) val
{
    self.dictionary[@"children"] = val;
}

- (NSArray*) singleValueExtendedProperties
{
    if(!_singleValueExtendedProperties){
        
    NSMutableArray *singleValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *singleValueExtendedProperties = self.dictionary[@"singleValueExtendedProperties"];

    if ([singleValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempSingleValueLegacyExtendedProperty in singleValueExtendedProperties){
            [singleValueExtendedPropertiesResult addObject:tempSingleValueLegacyExtendedProperty];
        }
    }

    _singleValueExtendedProperties = singleValueExtendedPropertiesResult;
        
    }
    return _singleValueExtendedProperties;
}

- (void) setSingleValueExtendedProperties: (NSArray*) val
{
    _singleValueExtendedProperties = val;
    self.dictionary[@"singleValueExtendedProperties"] = val;
}

- (NSArray*) multiValueExtendedProperties
{
    if(!_multiValueExtendedProperties){
        
    NSMutableArray *multiValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *multiValueExtendedProperties = self.dictionary[@"multiValueExtendedProperties"];

    if ([multiValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempMultiValueLegacyExtendedProperty in multiValueExtendedProperties){
            [multiValueExtendedPropertiesResult addObject:tempMultiValueLegacyExtendedProperty];
        }
    }

    _multiValueExtendedProperties = multiValueExtendedPropertiesResult;
        
    }
    return _multiValueExtendedProperties;
}

- (void) setMultiValueExtendedProperties: (NSArray*) val
{
    _multiValueExtendedProperties = val;
    self.dictionary[@"multiValueExtendedProperties"] = val;
}

- (MSGraphProfilePhoto*) photo
{
    if(!_photo){
        _photo = [[MSGraphProfilePhoto alloc] initWithDictionary: self.dictionary[@"photo"]];
    }
    return _photo;
}

- (void) setPhoto: (MSGraphProfilePhoto*) val
{
    _photo = val;
    self.dictionary[@"photo"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}


@end
