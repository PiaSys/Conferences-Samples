// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWorkbookWorksheetProtectionOptions : MSObject

@property (nonatomic, setter=setAllowAutoFilter:, getter=allowAutoFilter) BOOL allowAutoFilter;
@property (nonatomic, setter=setAllowDeleteColumns:, getter=allowDeleteColumns) BOOL allowDeleteColumns;
@property (nonatomic, setter=setAllowDeleteRows:, getter=allowDeleteRows) BOOL allowDeleteRows;
@property (nonatomic, setter=setAllowFormatCells:, getter=allowFormatCells) BOOL allowFormatCells;
@property (nonatomic, setter=setAllowFormatColumns:, getter=allowFormatColumns) BOOL allowFormatColumns;
@property (nonatomic, setter=setAllowFormatRows:, getter=allowFormatRows) BOOL allowFormatRows;
@property (nonatomic, setter=setAllowInsertColumns:, getter=allowInsertColumns) BOOL allowInsertColumns;
@property (nonatomic, setter=setAllowInsertHyperlinks:, getter=allowInsertHyperlinks) BOOL allowInsertHyperlinks;
@property (nonatomic, setter=setAllowInsertRows:, getter=allowInsertRows) BOOL allowInsertRows;
@property (nonatomic, setter=setAllowPivotTables:, getter=allowPivotTables) BOOL allowPivotTables;
@property (nonatomic, setter=setAllowSort:, getter=allowSort) BOOL allowSort;

@end
