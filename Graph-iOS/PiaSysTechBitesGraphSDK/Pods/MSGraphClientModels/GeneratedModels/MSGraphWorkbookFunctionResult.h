// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class NSDictionary; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookFunctionResult : MSGraphEntity

  @property (nullable, nonatomic, setter=setError:, getter=error) NSString* error;
    @property (nullable, nonatomic, setter=setValue:, getter=value) NSDictionary* value;
  
@end
