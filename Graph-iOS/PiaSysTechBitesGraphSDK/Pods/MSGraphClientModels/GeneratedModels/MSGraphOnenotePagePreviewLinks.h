// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphExternalLink; 


#import "MSObject.h"

@interface MSGraphOnenotePagePreviewLinks : MSObject

@property (nullable, nonatomic, setter=setPreviewImageUrl:, getter=previewImageUrl) MSGraphExternalLink* previewImageUrl;

@end
