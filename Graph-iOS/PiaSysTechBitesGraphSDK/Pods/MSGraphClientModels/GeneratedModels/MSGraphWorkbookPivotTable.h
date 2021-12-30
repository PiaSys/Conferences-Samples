// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookWorksheet; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookPivotTable : MSGraphEntity

  @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setWorksheet:, getter=worksheet) MSGraphWorkbookWorksheet* worksheet;
  
@end
