// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphListInfo : MSObject

@property (nonatomic, setter=setContentTypesEnabled:, getter=contentTypesEnabled) BOOL contentTypesEnabled;
@property (nonatomic, setter=setHidden:, getter=hidden) BOOL hidden;
@property (nullable, nonatomic, setter=setTemplate:, getter=template) NSString* template;

@end
