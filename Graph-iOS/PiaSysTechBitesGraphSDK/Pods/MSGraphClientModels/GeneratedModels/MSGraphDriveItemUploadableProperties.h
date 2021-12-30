// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphFileSystemInfo; 


#import "MSObject.h"

@interface MSGraphDriveItemUploadableProperties : MSObject

@property (nullable, nonatomic, setter=setDriveItemUploadablePropertiesDescription:, getter=driveItemUploadablePropertiesDescription) NSString* driveItemUploadablePropertiesDescription;
@property (nullable, nonatomic, setter=setFileSystemInfo:, getter=fileSystemInfo) MSGraphFileSystemInfo* fileSystemInfo;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;

@end
