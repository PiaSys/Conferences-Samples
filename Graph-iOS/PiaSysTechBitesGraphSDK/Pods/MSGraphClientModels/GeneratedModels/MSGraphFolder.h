// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphFolderView; 


#import "MSObject.h"

@interface MSGraphFolder : MSObject

@property (nonatomic, setter=setChildCount:, getter=childCount) int32_t childCount;
@property (nullable, nonatomic, setter=setView:, getter=view) MSGraphFolderView* view;

@end
