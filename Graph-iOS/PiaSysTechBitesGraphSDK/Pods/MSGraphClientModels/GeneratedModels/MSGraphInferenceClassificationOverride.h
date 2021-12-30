// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEmailAddress; 
#import "MSGraphInferenceClassificationType.h"


#import "MSGraphEntity.h"

@interface MSGraphInferenceClassificationOverride : MSGraphEntity

  @property (nullable, nonatomic, setter=setClassifyAs:, getter=classifyAs) MSGraphInferenceClassificationType* classifyAs;
    @property (nullable, nonatomic, setter=setSenderEmailAddress:, getter=senderEmailAddress) MSGraphEmailAddress* senderEmailAddress;
  
@end
