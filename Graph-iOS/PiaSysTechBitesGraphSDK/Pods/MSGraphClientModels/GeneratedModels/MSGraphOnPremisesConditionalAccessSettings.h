// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphOnPremisesConditionalAccessSettings : MSGraphEntity

  @property (nonatomic, setter=setEnabled:, getter=enabled) BOOL enabled;
    @property (nonnull, nonatomic, setter=setIncludedGroups:, getter=includedGroups) NSArray* includedGroups;
    @property (nonnull, nonatomic, setter=setExcludedGroups:, getter=excludedGroups) NSArray* excludedGroups;
    @property (nonatomic, setter=setOverrideDefaultRule:, getter=overrideDefaultRule) BOOL overrideDefaultRule;
  
@end
