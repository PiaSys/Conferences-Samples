// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIosHomeScreenFolderPage; 


#import "MSGraphIosHomeScreenItem.h"

@interface MSGraphIosHomeScreenFolder : MSGraphIosHomeScreenItem

@property (nonnull, nonatomic, setter=setPages:, getter=pages) NSArray* pages;

@end
