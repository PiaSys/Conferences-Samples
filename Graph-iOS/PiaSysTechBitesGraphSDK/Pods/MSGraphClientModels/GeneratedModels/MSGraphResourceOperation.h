// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphResourceOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setResourceName:, getter=resourceName) NSString* resourceName;
    @property (nullable, nonatomic, setter=setActionName:, getter=actionName) NSString* actionName;
    @property (nullable, nonatomic, setter=setResourceOperationDescription:, getter=resourceOperationDescription) NSString* resourceOperationDescription;
  
@end
