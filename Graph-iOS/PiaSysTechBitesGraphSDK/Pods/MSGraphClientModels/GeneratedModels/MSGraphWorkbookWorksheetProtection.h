// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookWorksheetProtectionOptions; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookWorksheetProtection : MSGraphEntity

  @property (nullable, nonatomic, setter=setOptions:, getter=options) MSGraphWorkbookWorksheetProtectionOptions* options;
    @property (nonatomic, setter=setProtected:, getter=protected) BOOL protected;
  
@end
