// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphWorkbookApplication : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCalculationMode:, getter=calculationMode) NSString* calculationMode;
  
@end
