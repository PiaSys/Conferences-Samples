// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphFileHash; 
#import "MSGraphProcessIntegrityLevel.h"


#import "MSObject.h"

@interface MSGraphProcess : MSObject

@property (nullable, nonatomic, setter=setAccountName:, getter=accountName) NSString* accountName;
@property (nullable, nonatomic, setter=setCommandLine:, getter=commandLine) NSString* commandLine;
@property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
@property (nullable, nonatomic, setter=setFileHash:, getter=fileHash) MSGraphFileHash* fileHash;
@property (nullable, nonatomic, setter=setIntegrityLevel:, getter=integrityLevel) MSGraphProcessIntegrityLevel* integrityLevel;
@property (nonatomic, setter=setIsElevated:, getter=isElevated) BOOL isElevated;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setParentProcessCreatedDateTime:, getter=parentProcessCreatedDateTime) NSDate* parentProcessCreatedDateTime;
@property (nonatomic, setter=setParentProcessId:, getter=parentProcessId) int32_t parentProcessId;
@property (nullable, nonatomic, setter=setParentProcessName:, getter=parentProcessName) NSString* parentProcessName;
@property (nullable, nonatomic, setter=setPath:, getter=path) NSString* path;
@property (nonatomic, setter=setProcessId:, getter=processId) int32_t processId;

@end
