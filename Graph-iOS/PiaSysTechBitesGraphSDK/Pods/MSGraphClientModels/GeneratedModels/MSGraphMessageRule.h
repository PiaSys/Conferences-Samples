// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMessageRulePredicates, MSGraphMessageRuleActions; 


#import "MSGraphEntity.h"

@interface MSGraphMessageRule : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setSequence:, getter=sequence) int32_t sequence;
    @property (nullable, nonatomic, setter=setConditions:, getter=conditions) MSGraphMessageRulePredicates* conditions;
    @property (nullable, nonatomic, setter=setActions:, getter=actions) MSGraphMessageRuleActions* actions;
    @property (nullable, nonatomic, setter=setExceptions:, getter=exceptions) MSGraphMessageRulePredicates* exceptions;
    @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
    @property (nonatomic, setter=setHasError:, getter=hasError) BOOL hasError;
    @property (nonatomic, setter=setIsReadOnly:, getter=isReadOnly) BOOL isReadOnly;
  
@end
