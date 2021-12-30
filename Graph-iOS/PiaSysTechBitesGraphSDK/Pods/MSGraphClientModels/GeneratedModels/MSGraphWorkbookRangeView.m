// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRangeView()
{
    NSDictionary* _cellAddresses;
    int32_t _columnCount;
    NSDictionary* _formulas;
    NSDictionary* _formulasLocal;
    NSDictionary* _formulasR1C1;
    int32_t _index;
    NSDictionary* _numberFormat;
    int32_t _rowCount;
    NSDictionary* _text;
    NSDictionary* _valueTypes;
    NSDictionary* _values;
    NSArray* _rows;
}
@end

@implementation MSGraphWorkbookRangeView

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookRangeView";
    }
    return self;
}
- (NSDictionary*) cellAddresses
{
    if(!_cellAddresses){
        _cellAddresses = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"cellAddresses"]];
    }
    return _cellAddresses;
}

- (void) setCellAddresses: (NSDictionary*) val
{
    _cellAddresses = val;
    self.dictionary[@"cellAddresses"] = val;
}

- (int32_t) columnCount
{
    _columnCount = [self.dictionary[@"columnCount"] intValue];
    return _columnCount;
}

- (void) setColumnCount: (int32_t) val
{
    _columnCount = val;
    self.dictionary[@"columnCount"] = @(val);
}

- (NSDictionary*) formulas
{
    if(!_formulas){
        _formulas = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"formulas"]];
    }
    return _formulas;
}

- (void) setFormulas: (NSDictionary*) val
{
    _formulas = val;
    self.dictionary[@"formulas"] = val;
}

- (NSDictionary*) formulasLocal
{
    if(!_formulasLocal){
        _formulasLocal = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"formulasLocal"]];
    }
    return _formulasLocal;
}

- (void) setFormulasLocal: (NSDictionary*) val
{
    _formulasLocal = val;
    self.dictionary[@"formulasLocal"] = val;
}

- (NSDictionary*) formulasR1C1
{
    if(!_formulasR1C1){
        _formulasR1C1 = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"formulasR1C1"]];
    }
    return _formulasR1C1;
}

- (void) setFormulasR1C1: (NSDictionary*) val
{
    _formulasR1C1 = val;
    self.dictionary[@"formulasR1C1"] = val;
}

- (int32_t) index
{
    _index = [self.dictionary[@"index"] intValue];
    return _index;
}

- (void) setIndex: (int32_t) val
{
    _index = val;
    self.dictionary[@"index"] = @(val);
}

- (NSDictionary*) numberFormat
{
    if(!_numberFormat){
        _numberFormat = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"numberFormat"]];
    }
    return _numberFormat;
}

- (void) setNumberFormat: (NSDictionary*) val
{
    _numberFormat = val;
    self.dictionary[@"numberFormat"] = val;
}

- (int32_t) rowCount
{
    _rowCount = [self.dictionary[@"rowCount"] intValue];
    return _rowCount;
}

- (void) setRowCount: (int32_t) val
{
    _rowCount = val;
    self.dictionary[@"rowCount"] = @(val);
}

- (NSDictionary*) text
{
    if(!_text){
        _text = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"text"]];
    }
    return _text;
}

- (void) setText: (NSDictionary*) val
{
    _text = val;
    self.dictionary[@"text"] = val;
}

- (NSDictionary*) valueTypes
{
    if(!_valueTypes){
        _valueTypes = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"valueTypes"]];
    }
    return _valueTypes;
}

- (void) setValueTypes: (NSDictionary*) val
{
    _valueTypes = val;
    self.dictionary[@"valueTypes"] = val;
}

- (NSDictionary*) values
{
    if(!_values){
        _values = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"values"]];
    }
    return _values;
}

- (void) setValues: (NSDictionary*) val
{
    _values = val;
    self.dictionary[@"values"] = val;
}

- (NSArray*) rows
{
    if(!_rows){
        
    NSMutableArray *rowsResult = [NSMutableArray array];
    NSArray *rows = self.dictionary[@"rows"];

    if ([rows isKindOfClass:[NSArray class]]){
        for (id tempWorkbookRangeView in rows){
            [rowsResult addObject:tempWorkbookRangeView];
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


@end
