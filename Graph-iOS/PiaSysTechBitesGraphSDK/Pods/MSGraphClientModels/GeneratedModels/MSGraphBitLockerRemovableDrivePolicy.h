// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBitLockerEncryptionMethod.h"


#import "MSObject.h"

@interface MSGraphBitLockerRemovableDrivePolicy : MSObject

@property (nullable, nonatomic, setter=setEncryptionMethod:, getter=encryptionMethod) MSGraphBitLockerEncryptionMethod* encryptionMethod;
@property (nonatomic, setter=setRequireEncryptionForWriteAccess:, getter=requireEncryptionForWriteAccess) BOOL requireEncryptionForWriteAccess;
@property (nonatomic, setter=setBlockCrossOrganizationWriteAccess:, getter=blockCrossOrganizationWriteAccess) BOOL blockCrossOrganizationWriteAccess;

@end
