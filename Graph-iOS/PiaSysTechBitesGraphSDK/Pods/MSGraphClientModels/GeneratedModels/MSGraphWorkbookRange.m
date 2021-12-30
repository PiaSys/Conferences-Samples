// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookRange()
{
    NSString* _address;
    NSString* _addressLocal;
    int32_t _cellCount;
    int32_t _columnCount;
    BOOL _columnHidden;
    int32_t _columnIndex;
    NSDictionary* _formulas;
    NSDictionary* _formulasLocal;
    NSDictionary* _formulasR1C1;
    BOOL _hidden;
    NSDictionary* _numberFormat;
    int32_t _rowCount;
    BOOL _rowHidden;
    int32_t _rowIndex;
    NSDictionary* _text;
    NSDictionary* _valueTypes;
    NSDictionary* _values;
    MSGraphWorkbookRangeFormat* _format;
    MSGraphWorkbookRangeSort* _sort;
    MSGraphWorkbookWorksheet* _worksheet;
}
@end

@implementation MSGraphWorkbookRange

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookRange";
    }
    return self;
}
- (NSString*) address
{
    if([[NSNull null] isEqual:self.dictionary[@"address"]])
    {
        return nil;
    }   
    return self.dictionary[@"address"];
}

- (void) setAddress: (NSString*) val
{
    self.dictionary[@"address"] = val;
}

- (NSString*) addressLocal
{
    if([[NSNull null] isEqual:self.dictionary[@"addressLocal"]])
    {
        return nil;
    }   
    return self.dictionary[@"addressLocal"];
}

- (void) setAddressLocal: (NSString*) val
{
    self.dictionary[@"addressLocal"] = val;
}

- (int32_t) cellCount
{
    _cellCount = [self.dictionary[@"cellCount"] intValue];
    return _cellCount;
}

- (void) setCellCount: (int32_t) val
{
    _cellCount = val;
    self.dictionary[@"cellCount"] = @(val);
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

- (BOOL) columnHidden
{
    _columnHidden = [self.dictionary[@"columnHidden"] boolValue];
    return _columnHidden;
}

- (void) setColumnHidden: (BOOL) val
{
    _columnHidden = val;
    self.dictionary[@"columnHidden"] = @(val);
}

- (int32_t) columnIndex
{
    _columnIndex = [self.dictionary[@"columnIndex"] intValue];
    return _columnIndex;
}

- (void) setColumnIndex: (int32_t) val
{
    _columnIndex = val;
    self.dictionary[@"columnIndex"] = @(val);
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

- (BOOL) hidden
{
    _hidden = [self.dictionary[@"hidden"] boolValue];
    return _hidden;
}

- (void) setHidden: (BOOL) val
{
    _hidden = val;
    self.dictionary[@"hidden"] = @(val);
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

- (BOOL) rowHidden
{
    _rowHidden = [self.dictionary[@"rowHidden"] boolValue];
    return _rowHidden;
}

- (void) setRowHidden: (BOOL) val
{
    _rowHidden = val;
    self.dictionary[@"rowHidden"] = @(val);
}

- (int32_t) rowIndex
{
    _rowIndex = [self.dictionary[@"rowIndex"] intValue];
    return _rowIndex;
}

- (void) setRowIndex: (int32_t) val
{
    _rowIndex = val;
    self.dictionary[@"rowIndex"] = @(val);
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

- (MSGraphWorkbookRangeFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookRangeFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookRangeFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}

- (MSGraphWorkbookRangeSort*) sort
{
    if(!_sort){
        _sort = [[MSGraphWorkbookRangeSort alloc] initWithDictionary: self.dictionary[@"sort"]];
    }
    return _sort;
}

- (void) setSort: (MSGraphWorkbookRangeSort*) val
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
