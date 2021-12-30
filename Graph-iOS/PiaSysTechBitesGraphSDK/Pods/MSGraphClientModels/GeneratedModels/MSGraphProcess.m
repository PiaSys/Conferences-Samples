// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProcess()
{
    NSString* _accountName;
    NSString* _commandLine;
    NSDate* _createdDateTime;
    MSGraphFileHash* _fileHash;
    MSGraphProcessIntegrityLevel* _integrityLevel;
    BOOL _isElevated;
    NSString* _name;
    NSDate* _parentProcessCreatedDateTime;
    int32_t _parentProcessId;
    NSString* _parentProcessName;
    NSString* _path;
    int32_t _processId;
}
@end

@implementation MSGraphProcess

- (NSString*) accountName
{
    if([[NSNull null] isEqual:self.dictionary[@"accountName"]])
    {
        return nil;
    }   
    return self.dictionary[@"accountName"];
}

- (void) setAccountName: (NSString*) val
{
    self.dictionary[@"accountName"] = val;
}

- (NSString*) commandLine
{
    if([[NSNull null] isEqual:self.dictionary[@"commandLine"]])
    {
        return nil;
    }   
    return self.dictionary[@"commandLine"];
}

- (void) setCommandLine: (NSString*) val
{
    self.dictionary[@"commandLine"] = val;
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

- (MSGraphFileHash*) fileHash
{
    if(!_fileHash){
        _fileHash = [[MSGraphFileHash alloc] initWithDictionary: self.dictionary[@"fileHash"]];
    }
    return _fileHash;
}

- (void) setFileHash: (MSGraphFileHash*) val
{
    _fileHash = val;
    self.dictionary[@"fileHash"] = val;
}

- (MSGraphProcessIntegrityLevel*) integrityLevel
{
    if(!_integrityLevel){
        _integrityLevel = [self.dictionary[@"integrityLevel"] toMSGraphProcessIntegrityLevel];
    }
    return _integrityLevel;
}

- (void) setIntegrityLevel: (MSGraphProcessIntegrityLevel*) val
{
    _integrityLevel = val;
    self.dictionary[@"integrityLevel"] = val;
}

- (BOOL) isElevated
{
    _isElevated = [self.dictionary[@"isElevated"] boolValue];
    return _isElevated;
}

- (void) setIsElevated: (BOOL) val
{
    _isElevated = val;
    self.dictionary[@"isElevated"] = @(val);
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

- (NSDate*) parentProcessCreatedDateTime
{
    if(!_parentProcessCreatedDateTime){
        _parentProcessCreatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"parentProcessCreatedDateTime"]];
    }
    return _parentProcessCreatedDateTime;
}

- (void) setParentProcessCreatedDateTime: (NSDate*) val
{
    _parentProcessCreatedDateTime = val;
    self.dictionary[@"parentProcessCreatedDateTime"] = [val ms_toString];
}

- (int32_t) parentProcessId
{
    _parentProcessId = [self.dictionary[@"parentProcessId"] intValue];
    return _parentProcessId;
}

- (void) setParentProcessId: (int32_t) val
{
    _parentProcessId = val;
    self.dictionary[@"parentProcessId"] = @(val);
}

- (NSString*) parentProcessName
{
    if([[NSNull null] isEqual:self.dictionary[@"parentProcessName"]])
    {
        return nil;
    }   
    return self.dictionary[@"parentProcessName"];
}

- (void) setParentProcessName: (NSString*) val
{
    self.dictionary[@"parentProcessName"] = val;
}

- (NSString*) path
{
    if([[NSNull null] isEqual:self.dictionary[@"path"]])
    {
        return nil;
    }   
    return self.dictionary[@"path"];
}

- (void) setPath: (NSString*) val
{
    self.dictionary[@"path"] = val;
}

- (int32_t) processId
{
    _processId = [self.dictionary[@"processId"] intValue];
    return _processId;
}

- (void) setProcessId: (int32_t) val
{
    _processId = val;
    self.dictionary[@"processId"] = @(val);
}

@end
