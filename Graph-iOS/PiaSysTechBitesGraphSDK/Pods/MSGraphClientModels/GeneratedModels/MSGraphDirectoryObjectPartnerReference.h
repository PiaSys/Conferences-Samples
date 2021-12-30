// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDirectoryObject.h"

@interface MSGraphDirectoryObjectPartnerReference : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setDirectoryObjectPartnerReferenceDescription:, getter=directoryObjectPartnerReferenceDescription) NSString* directoryObjectPartnerReferenceDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setExternalPartnerTenantId:, getter=externalPartnerTenantId) NSString* externalPartnerTenantId;
    @property (nullable, nonatomic, setter=setObjectType:, getter=objectType) NSString* objectType;
  
@end
