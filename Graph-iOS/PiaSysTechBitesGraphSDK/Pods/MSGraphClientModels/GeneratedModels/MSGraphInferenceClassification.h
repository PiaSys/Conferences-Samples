// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphInferenceClassificationOverride; 


#import "MSGraphEntity.h"

@interface MSGraphInferenceClassification : MSGraphEntity

  @property (nullable, nonatomic, setter=setOverrides:, getter=overrides) NSArray* overrides;
  
@end
