// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphContactFolder()
{
    NSString* _parentFolderId;
    NSString* _displayName;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    NSArray* _contacts;
    NSArray* _childFolders;
}
@end

@implementation MSGraphContactFolder

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.contactFolder";
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

- (NSArray*) contacts
{
    if(!_contacts){
        
    NSMutableArray *contactsResult = [NSMutableArray array];
    NSArray *contacts = self.dictionary[@"contacts"];

    if ([contacts isKindOfClass:[NSArray class]]){
        for (id tempContact in contacts){
            [contactsResult addObject:tempContact];
        }
    }

    _contacts = contactsResult;
        
    }
    return _contacts;
}

- (void) setContacts: (NSArray*) val
{
    _contacts = val;
    self.dictionary[@"contacts"] = val;
}

- (NSArray*) childFolders
{
    if(!_childFolders){
        
    NSMutableArray *childFoldersResult = [NSMutableArray array];
    NSArray *childFolders = self.dictionary[@"childFolders"];

    if ([childFolders isKindOfClass:[NSArray class]]){
        for (id tempContactFolder in childFolders){
            [childFoldersResult addObject:tempContactFolder];
        }
    }

    _childFolders = childFoldersResult;
        
    }
    return _childFolders;
}

- (void) setChildFolders: (NSArray*) val
{
    _childFolders = val;
    self.dictionary[@"childFolders"] = val;
}


@end
