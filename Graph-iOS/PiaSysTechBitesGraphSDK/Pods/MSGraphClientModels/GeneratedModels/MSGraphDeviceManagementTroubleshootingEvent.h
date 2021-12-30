// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphDeviceManagementTroubleshootingEvent : MSGraphEntity

  @property (nonnull, nonatomic, setter=setEventDateTime:, getter=eventDateTime) NSDate* eventDateTime;
    @property (nullable, nonatomic, setter=setCorrelationId:, getter=correlationId) NSString* correlationId;
  
@end
