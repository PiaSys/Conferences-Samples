// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphContentTypeOrder : MSObject

@property (nonatomic, setter=setContentTypeOrderDefault:, getter=contentTypeOrderDefault) BOOL contentTypeOrderDefault;
@property (nonatomic, setter=setPosition:, getter=position) int32_t position;

@end
