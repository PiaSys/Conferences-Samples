// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookFilterCriteria; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookFilter : MSGraphEntity

  @property (nullable, nonatomic, setter=setCriteria:, getter=criteria) MSGraphWorkbookFilterCriteria* criteria;
  
@end
