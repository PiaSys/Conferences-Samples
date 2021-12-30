// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphManagedAppAvailability.h"


#import "MSGraphMobileApp.h"

@interface MSGraphManagedApp : MSGraphMobileApp

  @property (nonnull, nonatomic, setter=setAppAvailability:, getter=appAvailability) MSGraphManagedAppAvailability* appAvailability;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
  
@end
