// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAppliedConditionalAccessPolicyResult.h"


#import "MSObject.h"

@interface MSGraphAppliedConditionalAccessPolicy : MSObject

@property (nullable, nonatomic, setter=setAppliedConditionalAccessPolicyId:, getter=appliedConditionalAccessPolicyId) NSString* appliedConditionalAccessPolicyId;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setEnforcedGrantControls:, getter=enforcedGrantControls) NSArray* enforcedGrantControls;
@property (nullable, nonatomic, setter=setEnforcedSessionControls:, getter=enforcedSessionControls) NSArray* enforcedSessionControls;
@property (nullable, nonatomic, setter=setResult:, getter=result) MSGraphAppliedConditionalAccessPolicyResult* result;

@end
