// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookApplication, MSGraphWorkbookNamedItem, MSGraphWorkbookTable, MSGraphWorkbookWorksheet, MSGraphWorkbookComment, MSGraphWorkbookFunctions; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbook : MSGraphEntity

  @property (nullable, nonatomic, setter=setApplication:, getter=application) MSGraphWorkbookApplication* application;
    @property (nullable, nonatomic, setter=setNames:, getter=names) NSArray* names;
    @property (nullable, nonatomic, setter=setTables:, getter=tables) NSArray* tables;
    @property (nullable, nonatomic, setter=setWorksheets:, getter=worksheets) NSArray* worksheets;
    @property (nullable, nonatomic, setter=setComments:, getter=comments) NSArray* comments;
    @property (nullable, nonatomic, setter=setFunctions:, getter=functions) MSGraphWorkbookFunctions* functions;
  
@end
