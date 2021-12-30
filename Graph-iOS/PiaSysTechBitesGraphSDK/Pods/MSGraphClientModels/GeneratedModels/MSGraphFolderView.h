// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphFolderView : MSObject

@property (nullable, nonatomic, setter=setSortBy:, getter=sortBy) NSString* sortBy;
@property (nullable, nonatomic, setter=setSortOrder:, getter=sortOrder) NSString* sortOrder;
@property (nullable, nonatomic, setter=setViewType:, getter=viewType) NSString* viewType;

@end
