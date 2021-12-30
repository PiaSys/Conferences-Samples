// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceComplianceActionItem; 


#import "MSGraphEntity.h"

@interface MSGraphDeviceComplianceScheduledActionForRule : MSGraphEntity

  @property (nullable, nonatomic, setter=setRuleName:, getter=ruleName) NSString* ruleName;
    @property (nullable, nonatomic, setter=setScheduledActionConfigurations:, getter=scheduledActionConfigurations) NSArray* scheduledActionConfigurations;
  
@end
