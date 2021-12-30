// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSizeRange : MSObject

@property (nonatomic, setter=setMinimumSize:, getter=minimumSize) int32_t minimumSize;
@property (nonatomic, setter=setMaximumSize:, getter=maximumSize) int32_t maximumSize;

@end
