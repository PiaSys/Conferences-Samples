// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookTableColumn, MSGraphWorkbookTableRow, MSGraphWorkbookTableSort, MSGraphWorkbookWorksheet; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookTable : MSGraphEntity

  @property (nonatomic, setter=setHighlightFirstColumn:, getter=highlightFirstColumn) BOOL highlightFirstColumn;
    @property (nonatomic, setter=setHighlightLastColumn:, getter=highlightLastColumn) BOOL highlightLastColumn;
    @property (nullable, nonatomic, setter=setLegacyId:, getter=legacyId) NSString* legacyId;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nonatomic, setter=setShowBandedColumns:, getter=showBandedColumns) BOOL showBandedColumns;
    @property (nonatomic, setter=setShowBandedRows:, getter=showBandedRows) BOOL showBandedRows;
    @property (nonatomic, setter=setShowFilterButton:, getter=showFilterButton) BOOL showFilterButton;
    @property (nonatomic, setter=setShowHeaders:, getter=showHeaders) BOOL showHeaders;
    @property (nonatomic, setter=setShowTotals:, getter=showTotals) BOOL showTotals;
    @property (nullable, nonatomic, setter=setStyle:, getter=style) NSString* style;
    @property (nullable, nonatomic, setter=setColumns:, getter=columns) NSArray* columns;
    @property (nullable, nonatomic, setter=setRows:, getter=rows) NSArray* rows;
    @property (nullable, nonatomic, setter=setSort:, getter=sort) MSGraphWorkbookTableSort* sort;
    @property (nullable, nonatomic, setter=setWorksheet:, getter=worksheet) MSGraphWorkbookWorksheet* worksheet;
  
@end
