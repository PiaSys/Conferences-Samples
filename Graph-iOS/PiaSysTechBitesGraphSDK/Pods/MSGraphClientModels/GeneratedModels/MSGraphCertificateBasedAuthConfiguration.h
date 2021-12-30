// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCertificateAuthority; 


#import "MSGraphEntity.h"

@interface MSGraphCertificateBasedAuthConfiguration : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCertificateAuthorities:, getter=certificateAuthorities) NSArray* certificateAuthorities;
  
@end
