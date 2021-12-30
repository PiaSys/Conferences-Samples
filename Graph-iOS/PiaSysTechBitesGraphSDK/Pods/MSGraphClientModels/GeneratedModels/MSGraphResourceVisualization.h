// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphResourceVisualization : MSObject

@property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nullable, nonatomic, setter=setMediaType:, getter=mediaType) NSString* mediaType;
@property (nullable, nonatomic, setter=setPreviewImageUrl:, getter=previewImageUrl) NSString* previewImageUrl;
@property (nullable, nonatomic, setter=setPreviewText:, getter=previewText) NSString* previewText;
@property (nullable, nonatomic, setter=setContainerWebUrl:, getter=containerWebUrl) NSString* containerWebUrl;
@property (nullable, nonatomic, setter=setContainerDisplayName:, getter=containerDisplayName) NSString* containerDisplayName;
@property (nullable, nonatomic, setter=setContainerType:, getter=containerType) NSString* containerType;

@end
