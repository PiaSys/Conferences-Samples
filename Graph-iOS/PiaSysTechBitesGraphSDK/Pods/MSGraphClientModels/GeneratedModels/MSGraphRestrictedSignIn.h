// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphSignIn.h"

@interface MSGraphRestrictedSignIn : MSGraphSignIn

  @property (nullable, nonatomic, setter=setTargetTenantId:, getter=targetTenantId) NSString* targetTenantId;
  
@end
