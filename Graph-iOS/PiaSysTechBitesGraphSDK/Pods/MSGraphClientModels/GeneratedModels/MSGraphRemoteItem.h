// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet, MSGraphFile, MSGraphFileSystemInfo, MSGraphFolder, MSGraphPackage, MSGraphItemReference, MSGraphShared, MSGraphSharepointIds, MSGraphSpecialFolder; 


#import "MSObject.h"

@interface MSGraphRemoteItem : MSObject

@property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
@property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
@property (nullable, nonatomic, setter=setFile:, getter=file) MSGraphFile* file;
@property (nullable, nonatomic, setter=setFileSystemInfo:, getter=fileSystemInfo) MSGraphFileSystemInfo* fileSystemInfo;
@property (nullable, nonatomic, setter=setFolder:, getter=folder) MSGraphFolder* folder;
@property (nullable, nonatomic, setter=setRemoteItemId:, getter=remoteItemId) NSString* remoteItemId;
@property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
@property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setPackage:, getter=package) MSGraphPackage* package;
@property (nullable, nonatomic, setter=setParentReference:, getter=parentReference) MSGraphItemReference* parentReference;
@property (nullable, nonatomic, setter=setShared:, getter=shared) MSGraphShared* shared;
@property (nullable, nonatomic, setter=setSharepointIds:, getter=sharepointIds) MSGraphSharepointIds* sharepointIds;
@property (nonatomic, setter=setSize:, getter=size) int64_t size;
@property (nullable, nonatomic, setter=setSpecialFolder:, getter=specialFolder) MSGraphSpecialFolder* specialFolder;
@property (nullable, nonatomic, setter=setWebDavUrl:, getter=webDavUrl) NSString* webDavUrl;
@property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;

@end
