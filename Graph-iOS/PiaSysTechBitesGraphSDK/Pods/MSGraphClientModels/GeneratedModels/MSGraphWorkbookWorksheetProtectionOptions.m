// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookWorksheetProtectionOptions()
{
    BOOL _allowAutoFilter;
    BOOL _allowDeleteColumns;
    BOOL _allowDeleteRows;
    BOOL _allowFormatCells;
    BOOL _allowFormatColumns;
    BOOL _allowFormatRows;
    BOOL _allowInsertColumns;
    BOOL _allowInsertHyperlinks;
    BOOL _allowInsertRows;
    BOOL _allowPivotTables;
    BOOL _allowSort;
}
@end

@implementation MSGraphWorkbookWorksheetProtectionOptions

- (BOOL) allowAutoFilter
{
    _allowAutoFilter = [self.dictionary[@"allowAutoFilter"] boolValue];
    return _allowAutoFilter;
}

- (void) setAllowAutoFilter: (BOOL) val
{
    _allowAutoFilter = val;
    self.dictionary[@"allowAutoFilter"] = @(val);
}

- (BOOL) allowDeleteColumns
{
    _allowDeleteColumns = [self.dictionary[@"allowDeleteColumns"] boolValue];
    return _allowDeleteColumns;
}

- (void) setAllowDeleteColumns: (BOOL) val
{
    _allowDeleteColumns = val;
    self.dictionary[@"allowDeleteColumns"] = @(val);
}

- (BOOL) allowDeleteRows
{
    _allowDeleteRows = [self.dictionary[@"allowDeleteRows"] boolValue];
    return _allowDeleteRows;
}

- (void) setAllowDeleteRows: (BOOL) val
{
    _allowDeleteRows = val;
    self.dictionary[@"allowDeleteRows"] = @(val);
}

- (BOOL) allowFormatCells
{
    _allowFormatCells = [self.dictionary[@"allowFormatCells"] boolValue];
    return _allowFormatCells;
}

- (void) setAllowFormatCells: (BOOL) val
{
    _allowFormatCells = val;
    self.dictionary[@"allowFormatCells"] = @(val);
}

- (BOOL) allowFormatColumns
{
    _allowFormatColumns = [self.dictionary[@"allowFormatColumns"] boolValue];
    return _allowFormatColumns;
}

- (void) setAllowFormatColumns: (BOOL) val
{
    _allowFormatColumns = val;
    self.dictionary[@"allowFormatColumns"] = @(val);
}

- (BOOL) allowFormatRows
{
    _allowFormatRows = [self.dictionary[@"allowFormatRows"] boolValue];
    return _allowFormatRows;
}

- (void) setAllowFormatRows: (BOOL) val
{
    _allowFormatRows = val;
    self.dictionary[@"allowFormatRows"] = @(val);
}

- (BOOL) allowInsertColumns
{
    _allowInsertColumns = [self.dictionary[@"allowInsertColumns"] boolValue];
    return _allowInsertColumns;
}

- (void) setAllowInsertColumns: (BOOL) val
{
    _allowInsertColumns = val;
    self.dictionary[@"allowInsertColumns"] = @(val);
}

- (BOOL) allowInsertHyperlinks
{
    _allowInsertHyperlinks = [self.dictionary[@"allowInsertHyperlinks"] boolValue];
    return _allowInsertHyperlinks;
}

- (void) setAllowInsertHyperlinks: (BOOL) val
{
    _allowInsertHyperlinks = val;
    self.dictionary[@"allowInsertHyperlinks"] = @(val);
}

- (BOOL) allowInsertRows
{
    _allowInsertRows = [self.dictionary[@"allowInsertRows"] boolValue];
    return _allowInsertRows;
}

- (void) setAllowInsertRows: (BOOL) val
{
    _allowInsertRows = val;
    self.dictionary[@"allowInsertRows"] = @(val);
}

- (BOOL) allowPivotTables
{
    _allowPivotTables = [self.dictionary[@"allowPivotTables"] boolValue];
    return _allowPivotTables;
}

- (void) setAllowPivotTables: (BOOL) val
{
    _allowPivotTables = val;
    self.dictionary[@"allowPivotTables"] = @(val);
}

- (BOOL) allowSort
{
    _allowSort = [self.dictionary[@"allowSort"] boolValue];
    return _allowSort;
}

- (void) setAllowSort: (BOOL) val
{
    _allowSort = val;
    self.dictionary[@"allowSort"] = @(val);
}

@end
