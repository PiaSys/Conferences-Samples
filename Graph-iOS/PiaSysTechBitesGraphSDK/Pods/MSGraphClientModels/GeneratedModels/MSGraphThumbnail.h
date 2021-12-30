// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphThumbnail : MSObject

@property (nonatomic, setter=setHeight:, getter=height) int32_t height;
@property (nullable, nonatomic, setter=setSourceItemId:, getter=sourceItemId) NSString* sourceItemId;
@property (nullable, nonatomic, setter=setUrl:, getter=url) NSString* url;
@property (nonatomic, setter=setWidth:, getter=width) int32_t width;

@end
