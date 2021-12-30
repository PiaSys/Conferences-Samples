// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphResourceAction; 


#import "MSObject.h"

@interface MSGraphRolePermission : MSObject

@property (nullable, nonatomic, setter=setResourceActions:, getter=resourceActions) NSArray* resourceActions;

@end
