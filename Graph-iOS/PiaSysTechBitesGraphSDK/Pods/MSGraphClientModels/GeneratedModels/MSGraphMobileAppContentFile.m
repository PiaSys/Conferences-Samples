// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileAppContentFile()
{
    NSString* _azureStorageUri;
    BOOL _isCommitted;
    NSDate* _createdDateTime;
    NSString* _name;
    int64_t _size;
    int64_t _sizeEncrypted;
    NSDate* _azureStorageUriExpirationDateTime;
    NSString* _manifest;
    MSGraphMobileAppContentFileUploadState* _uploadState;
}
@end

@implementation MSGraphMobileAppContentFile

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mobileAppContentFile";
    }
    return self;
}
- (NSString*) azureStorageUri
{
    if([[NSNull null] isEqual:self.dictionary[@"azureStorageUri"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureStorageUri"];
}

- (void) setAzureStorageUri: (NSString*) val
{
    self.dictionary[@"azureStorageUri"] = val;
}

- (BOOL) isCommitted
{
    _isCommitted = [self.dictionary[@"isCommitted"] boolValue];
    return _isCommitted;
}

- (void) setIsCommitted: (BOOL) val
{
    _isCommitted = val;
    self.dictionary[@"isCommitted"] = @(val);
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

- (int64_t) sizeEncrypted
{
    _sizeEncrypted = [self.dictionary[@"sizeEncrypted"] longLongValue];
    return _sizeEncrypted;
}

- (void) setSizeEncrypted: (int64_t) val
{
    _sizeEncrypted = val;
    self.dictionary[@"sizeEncrypted"] = @(val);
}

- (NSDate*) azureStorageUriExpirationDateTime
{
    if(!_azureStorageUriExpirationDateTime){
        _azureStorageUriExpirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"azureStorageUriExpirationDateTime"]];
    }
    return _azureStorageUriExpirationDateTime;
}

- (void) setAzureStorageUriExpirationDateTime: (NSDate*) val
{
    _azureStorageUriExpirationDateTime = val;
    self.dictionary[@"azureStorageUriExpirationDateTime"] = [val ms_toString];
}

- (NSString*) manifest
{
    if([[NSNull null] isEqual:self.dictionary[@"manifest"]])
    {
        return nil;
    }   
    return self.dictionary[@"manifest"];
}

- (void) setManifest: (NSString*) val
{
    self.dictionary[@"manifest"] = val;
}

- (MSGraphMobileAppContentFileUploadState*) uploadState
{
    if(!_uploadState){
        _uploadState = [self.dictionary[@"uploadState"] toMSGraphMobileAppContentFileUploadState];
    }
    return _uploadState;
}

- (void) setUploadState: (MSGraphMobileAppContentFileUploadState*) val
{
    _uploadState = val;
    self.dictionary[@"uploadState"] = val;
}


@end
