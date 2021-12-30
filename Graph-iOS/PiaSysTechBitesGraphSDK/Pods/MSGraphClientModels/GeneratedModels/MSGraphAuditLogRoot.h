// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSignIn, MSGraphDirectoryAudit, MSGraphRestrictedSignIn; 


#import "MSGraphEntity.h"

@interface MSGraphAuditLogRoot : MSGraphEntity

  @property (nullable, nonatomic, setter=setSignIns:, getter=signIns) NSArray* signIns;
    @property (nullable, nonatomic, setter=setDirectoryAudits:, getter=directoryAudits) NSArray* directoryAudits;
    @property (nullable, nonatomic, setter=setRestrictedSignIns:, getter=restrictedSignIns) NSArray* restrictedSignIns;
  
@end
