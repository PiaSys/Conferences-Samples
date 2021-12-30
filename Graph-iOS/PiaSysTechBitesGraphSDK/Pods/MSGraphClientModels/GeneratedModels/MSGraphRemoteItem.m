// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRemoteItem()
{
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    MSGraphFile* _file;
    MSGraphFileSystemInfo* _fileSystemInfo;
    MSGraphFolder* _folder;
    NSString* _remoteItemId;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    NSString* _name;
    MSGraphPackage* _package;
    MSGraphItemReference* _parentReference;
    MSGraphShared* _shared;
    MSGraphSharepointIds* _sharepointIds;
    int64_t _size;
    MSGraphSpecialFolder* _specialFolder;
    NSString* _webDavUrl;
    NSString* _webUrl;
}
@end

@implementation MSGraphRemoteItem

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

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphFile*) file
{
    if(!_file){
        _file = [[MSGraphFile alloc] initWithDictionary: self.dictionary[@"file"]];
    }
    return _file;
}

- (void) setFile: (MSGraphFile*) val
{
    _file = val;
    self.dictionary[@"file"] = val;
}

- (MSGraphFileSystemInfo*) fileSystemInfo
{
    if(!_fileSystemInfo){
        _fileSystemInfo = [[MSGraphFileSystemInfo alloc] initWithDictionary: self.dictionary[@"fileSystemInfo"]];
    }
    return _fileSystemInfo;
}

- (void) setFileSystemInfo: (MSGraphFileSystemInfo*) val
{
    _fileSystemInfo = val;
    self.dictionary[@"fileSystemInfo"] = val;
}

- (MSGraphFolder*) folder
{
    if(!_folder){
        _folder = [[MSGraphFolder alloc] initWithDictionary: self.dictionary[@"folder"]];
    }
    return _folder;
}

- (void) setFolder: (MSGraphFolder*) val
{
    _folder = val;
    self.dictionary[@"folder"] = val;
}

- (NSString*) remoteItemId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setRemoteItemId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (MSGraphIdentitySet*) lastModifiedBy
{
    if(!_lastModifiedBy){
        _lastModifiedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"lastModifiedBy"]];
    }
    return _lastModifiedBy;
}

- (void) setLastModifiedBy: (MSGraphIdentitySet*) val
{
    _lastModifiedBy = val;
    self.dictionary[@"lastModifiedBy"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphPackage*) package
{
    if(!_package){
        _package = [[MSGraphPackage alloc] initWithDictionary: self.dictionary[@"package"]];
    }
    return _package;
}

- (void) setPackage: (MSGraphPackage*) val
{
    _package = val;
    self.dictionary[@"package"] = val;
}

- (MSGraphItemReference*) parentReference
{
    if(!_parentReference){
        _parentReference = [[MSGraphItemReference alloc] initWithDictionary: self.dictionary[@"parentReference"]];
    }
    return _parentReference;
}

- (void) setParentReference: (MSGraphItemReference*) val
{
    _parentReference = val;
    self.dictionary[@"parentReference"] = val;
}

- (MSGraphShared*) shared
{
    if(!_shared){
        _shared = [[MSGraphShared alloc] initWithDictionary: self.dictionary[@"shared"]];
    }
    return _shared;
}

- (void) setShared: (MSGraphShared*) val
{
    _shared = val;
    self.dictionary[@"shared"] = val;
}

- (MSGraphSharepointIds*) sharepointIds
{
    if(!_sharepointIds){
        _sharepointIds = [[MSGraphSharepointIds alloc] initWithDictionary: self.dictionary[@"sharepointIds"]];
    }
    return _sharepointIds;
}

- (void) setSharepointIds: (MSGraphSharepointIds*) val
{
    _sharepointIds = val;
    self.dictionary[@"sharepointIds"] = val;
}

- (int64_t) size
{
    _size = [self.dictionary[@"size"] longLongValue];
    return _size;
}

- (void) setSize: (int64_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

- (MSGraphSpecialFolder*) specialFolder
{
    if(!_specialFolder){
        _specialFolder = [[MSGraphSpecialFolder alloc] initWithDictionary: self.dictionary[@"specialFolder"]];
    }
    return _specialFolder;
}

- (void) setSpecialFolder: (MSGraphSpecialFolder*) val
{
    _specialFolder = val;
    self.dictionary[@"specialFolder"] = val;
}

- (NSString*) webDavUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webDavUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webDavUrl"];
}

- (void) setWebDavUrl: (NSString*) val
{
    self.dictionary[@"webDavUrl"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

@end
