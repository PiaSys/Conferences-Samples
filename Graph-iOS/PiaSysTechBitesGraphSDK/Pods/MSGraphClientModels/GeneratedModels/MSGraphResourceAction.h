// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphResourceAction : MSObject

@property (nullable, nonatomic, setter=setAllowedResourceActions:, getter=allowedResourceActions) NSArray* allowedResourceActions;
@property (nullable, nonatomic, setter=setNotAllowedResourceActions:, getter=notAllowedResourceActions) NSArray* notAllowedResourceActions;

@end
