// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphLookupColumn : MSObject

@property (nonatomic, setter=setAllowMultipleValues:, getter=allowMultipleValues) BOOL allowMultipleValues;
@property (nonatomic, setter=setAllowUnlimitedLength:, getter=allowUnlimitedLength) BOOL allowUnlimitedLength;
@property (nullable, nonatomic, setter=setColumnName:, getter=columnName) NSString* columnName;
@property (nullable, nonatomic, setter=setListId:, getter=listId) NSString* listId;
@property (nullable, nonatomic, setter=setPrimaryLookupColumnId:, getter=primaryLookupColumnId) NSString* primaryLookupColumnId;

@end
