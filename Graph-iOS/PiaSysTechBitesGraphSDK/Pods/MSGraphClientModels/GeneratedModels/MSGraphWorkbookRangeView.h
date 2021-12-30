// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class NSDictionary; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookRangeView : MSGraphEntity

  @property (nullable, nonatomic, setter=setCellAddresses:, getter=cellAddresses) NSDictionary* cellAddresses;
    @property (nonatomic, setter=setColumnCount:, getter=columnCount) int32_t columnCount;
    @property (nullable, nonatomic, setter=setFormulas:, getter=formulas) NSDictionary* formulas;
    @property (nullable, nonatomic, setter=setFormulasLocal:, getter=formulasLocal) NSDictionary* formulasLocal;
    @property (nullable, nonatomic, setter=setFormulasR1C1:, getter=formulasR1C1) NSDictionary* formulasR1C1;
    @property (nonatomic, setter=setIndex:, getter=index) int32_t index;
    @property (nullable, nonatomic, setter=setNumberFormat:, getter=numberFormat) NSDictionary* numberFormat;
    @property (nonatomic, setter=setRowCount:, getter=rowCount) int32_t rowCount;
    @property (nullable, nonatomic, setter=setText:, getter=text) NSDictionary* text;
    @property (nullable, nonatomic, setter=setValueTypes:, getter=valueTypes) NSDictionary* valueTypes;
    @property (nullable, nonatomic, setter=setValues:, getter=values) NSDictionary* values;
    @property (nullable, nonatomic, setter=setRows:, getter=rows) NSArray* rows;
  
@end
