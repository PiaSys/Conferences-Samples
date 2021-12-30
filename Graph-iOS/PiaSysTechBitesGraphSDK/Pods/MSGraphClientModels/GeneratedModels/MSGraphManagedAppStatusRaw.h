// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class NSDictionary; 


#import "MSGraphManagedAppStatus.h"

@interface MSGraphManagedAppStatusRaw : MSGraphManagedAppStatus

  @property (nullable, nonatomic, setter=setContent:, getter=content) NSDictionary* content;
  
@end
