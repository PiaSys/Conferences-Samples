// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookTable()
{
    BOOL _highlightFirstColumn;
    BOOL _highlightLastColumn;
    NSString* _legacyId;
    NSString* _name;
    BOOL _showBandedColumns;
    BOOL _showBandedRows;
    BOOL _showFilterButton;
    BOOL _showHeaders;
    BOOL _showTotals;
    NSString* _style;
    NSArray* _columns;
    NSArray* _rows;
    MSGraphWorkbookTableSort* _sort;
    MSGraphWorkbookWorksheet* _worksheet;
}
@end

@implementation MSGraphWorkbookTable

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookTable";
    }
    return self;
}
- (BOOL) highlightFirstColumn
{
    _highlightFirstColumn = [self.dictionary[@"highlightFirstColumn"] boolValue];
    return _highlightFirstColumn;
}

- (void) setHighlightFirstColumn: (BOOL) val
{
    _highlightFirstColumn = val;
    self.dictionary[@"highlightFirstColumn"] = @(val);
}

- (BOOL) highlightLastColumn
{
    _highlightLastColumn = [self.dictionary[@"highlightLastColumn"] boolValue];
    return _highlightLastColumn;
}

- (void) setHighlightLastColumn: (BOOL) val
{
    _highlightLastColumn = val;
    self.dictionary[@"highlightLastColumn"] = @(val);
}

- (NSString*) legacyId
{
    if([[NSNull null] isEqual:self.dictionary[@"legacyId"]])
    {
        return nil;
    }   
    return self.dictionary[@"legacyId"];
}

- (void) setLegacyId: (NSString*) val
{
    self.dictionary[@"legacyId"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (BOOL) showBandedColumns
{
    _showBandedColumns = [self.dictionary[@"showBandedColumns"] boolValue];
    return _showBandedColumns;
}

- (void) setShowBandedColumns: (BOOL) val
{
    _showBandedColumns = val;
    self.dictionary[@"showBandedColumns"] = @(val);
}

- (BOOL) showBandedRows
{
    _showBandedRows = [self.dictionary[@"showBandedRows"] boolValue];
    return _showBandedRows;
}

- (void) setShowBandedRows: (BOOL) val
{
    _showBandedRows = val;
    self.dictionary[@"showBandedRows"] = @(val);
}

- (BOOL) showFilterButton
{
    _showFilterButton = [self.dictionary[@"showFilterButton"] boolValue];
    return _showFilterButton;
}

- (void) setShowFilterButton: (BOOL) val
{
    _showFilterButton = val;
    self.dictionary[@"showFilterButton"] = @(val);
}

- (BOOL) showHeaders
{
    _showHeaders = [self.dictionary[@"showHeaders"] boolValue];
    return _showHeaders;
}

- (void) setShowHeaders: (BOOL) val
{
    _showHeaders = val;
    self.dictionary[@"showHeaders"] = @(val);
}

- (BOOL) showTotals
{
    _showTotals = [self.dictionary[@"showTotals"] boolValue];
    return _showTotals;
}

- (void) setShowTotals: (BOOL) val
{
    _showTotals = val;
    self.dictionary[@"showTotals"] = @(val);
}

- (NSString*) style
{
    if([[NSNull null] isEqual:self.dictionary[@"style"]])
    {
        return nil;
    }   
    return self.dictionary[@"style"];
}

- (void) setStyle: (NSString*) val
{
    self.dictionary[@"style"] = val;
}

- (NSArray*) columns
{
    if(!_columns){
        
    NSMutableArray *columnsResult = [NSMutableArray array];
    NSArray *columns = self.dictionary[@"columns"];

    if ([columns isKindOfClass:[NSArray class]]){
        for (id tempWorkbookTableColumn in columns){
            [columnsResult addObject:tempWorkbookTableColumn];
        }
    }

    _columns = columnsResult;
        
    }
    return _columns;
}

- (void) setColumns: (NSArray*) val
{
    _columns = val;
    self.dictionary[@"columns"] = val;
}

- (NSArray*) rows
{
    if(!_rows){
        
    NSMutableArray *rowsResult = [NSMutableArray array];
    NSArray *rows = self.dictionary[@"rows"];

    if ([rows isKindOfClass:[NSArray class]]){
        for (id tempWorkbookTableRow in rows){
            [rowsResult addObject:tempWorkbookTableRow];
        }
    }

    _rows = rowsResult;
        
    }
    return _rows;
}

- (void) setRows: (NSArray*) val
{
    _rows = val;
    self.dictionary[@"rows"] = val;
}

- (MSGraphWorkbookTableSort*) sort
{
    if(!_sort){
        _sort = [[MSGraphWorkbookTableSort alloc] initWithDictionary: self.dictionary[@"sort"]];
    }
    return _sort;
}

- (void) setSort: (MSGraphWorkbookTableSort*) val
{
    _sort = val;
    self.dictionary[@"sort"] = val;
}

- (MSGraphWorkbookWorksheet*) worksheet
{
    if(!_worksheet){
        _worksheet = [[MSGraphWorkbookWorksheet alloc] initWithDictionary: self.dictionary[@"worksheet"]];
    }
    return _worksheet;
}

- (void) setWorksheet: (MSGraphWorkbookWorksheet*) val
{
    _worksheet = val;
    self.dictionary[@"worksheet"] = val;
}


@end
