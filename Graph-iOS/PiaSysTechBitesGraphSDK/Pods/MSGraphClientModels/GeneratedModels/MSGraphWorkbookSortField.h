// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphWorkbookIcon; 


#import "MSObject.h"

@interface MSGraphWorkbookSortField : MSObject

@property (nonatomic, setter=setAscending:, getter=ascending) BOOL ascending;
@property (nullable, nonatomic, setter=setColor:, getter=color) NSString* color;
@property (nonnull, nonatomic, setter=setDataOption:, getter=dataOption) NSString* dataOption;
@property (nullable, nonatomic, setter=setIcon:, getter=icon) MSGraphWorkbookIcon* icon;
@property (nonatomic, setter=setKey:, getter=key) int32_t key;
@property (nonnull, nonatomic, setter=setSortOn:, getter=sortOn) NSString* sortOn;

@end
