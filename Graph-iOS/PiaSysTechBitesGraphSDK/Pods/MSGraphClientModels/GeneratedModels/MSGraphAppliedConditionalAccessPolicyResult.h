// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAppliedConditionalAccessPolicyResultValue){

	MSGraphAppliedConditionalAccessPolicyResultSuccess = 0,
	MSGraphAppliedConditionalAccessPolicyResultFailure = 1,
	MSGraphAppliedConditionalAccessPolicyResultNotApplied = 2,
	MSGraphAppliedConditionalAccessPolicyResultNotEnabled = 3,
	MSGraphAppliedConditionalAccessPolicyResultUnknown = 4,
	MSGraphAppliedConditionalAccessPolicyResultUnknownFutureValue = 5,
    MSGraphAppliedConditionalAccessPolicyResultEndOfEnum
};

@interface MSGraphAppliedConditionalAccessPolicyResult : NSObject

+(MSGraphAppliedConditionalAccessPolicyResult*) success;
+(MSGraphAppliedConditionalAccessPolicyResult*) failure;
+(MSGraphAppliedConditionalAccessPolicyResult*) notApplied;
+(MSGraphAppliedConditionalAccessPolicyResult*) notEnabled;
+(MSGraphAppliedConditionalAccessPolicyResult*) unknown;
+(MSGraphAppliedConditionalAccessPolicyResult*) unknownFutureValue;

+(MSGraphAppliedConditionalAccessPolicyResult*) UnknownEnumValue;

+(MSGraphAppliedConditionalAccessPolicyResult*) appliedConditionalAccessPolicyResultWithEnumValue:(MSGraphAppliedConditionalAccessPolicyResultValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAppliedConditionalAccessPolicyResultValue enumValue;

@end


@interface NSString (MSGraphAppliedConditionalAccessPolicyResult)

- (MSGraphAppliedConditionalAccessPolicyResult*) toMSGraphAppliedConditionalAccessPolicyResult;

@end
