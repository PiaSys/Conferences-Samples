// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMobileAppIdentifier; 


#import "MSGraphEntity.h"

@interface MSGraphManagedMobileApp : MSGraphEntity

  @property (nullable, nonatomic, setter=setMobileAppIdentifier:, getter=mobileAppIdentifier) MSGraphMobileAppIdentifier* mobileAppIdentifier;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
  
@end
