// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphWindowsInformationProtectionAppLockerFile : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setFileHash:, getter=fileHash) NSString* fileHash;
    @property (nullable, nonatomic, setter=setFile:, getter=file) NSString* file;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
  
@end
