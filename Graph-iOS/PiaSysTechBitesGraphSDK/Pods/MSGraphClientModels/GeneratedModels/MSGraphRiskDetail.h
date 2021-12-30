// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRiskDetailValue){

	MSGraphRiskDetailNone = 0,
	MSGraphRiskDetailAdminGeneratedTemporaryPassword = 1,
	MSGraphRiskDetailUserPerformedSecuredPasswordChange = 2,
	MSGraphRiskDetailUserPerformedSecuredPasswordReset = 3,
	MSGraphRiskDetailAdminConfirmedSigninSafe = 4,
	MSGraphRiskDetailAiConfirmedSigninSafe = 5,
	MSGraphRiskDetailUserPassedMFADrivenByRiskBasedPolicy = 6,
	MSGraphRiskDetailAdminDismissedAllRiskForUser = 7,
	MSGraphRiskDetailAdminConfirmedSigninCompromised = 8,
	MSGraphRiskDetailHidden = 9,
	MSGraphRiskDetailAdminConfirmedUserCompromised = 10,
	MSGraphRiskDetailUnknownFutureValue = 11,
    MSGraphRiskDetailEndOfEnum
};

@interface MSGraphRiskDetail : NSObject

+(MSGraphRiskDetail*) none;
+(MSGraphRiskDetail*) adminGeneratedTemporaryPassword;
+(MSGraphRiskDetail*) userPerformedSecuredPasswordChange;
+(MSGraphRiskDetail*) userPerformedSecuredPasswordReset;
+(MSGraphRiskDetail*) adminConfirmedSigninSafe;
+(MSGraphRiskDetail*) aiConfirmedSigninSafe;
+(MSGraphRiskDetail*) userPassedMFADrivenByRiskBasedPolicy;
+(MSGraphRiskDetail*) adminDismissedAllRiskForUser;
+(MSGraphRiskDetail*) adminConfirmedSigninCompromised;
+(MSGraphRiskDetail*) hidden;
+(MSGraphRiskDetail*) adminConfirmedUserCompromised;
+(MSGraphRiskDetail*) unknownFutureValue;

+(MSGraphRiskDetail*) UnknownEnumValue;

+(MSGraphRiskDetail*) riskDetailWithEnumValue:(MSGraphRiskDetailValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRiskDetailValue enumValue;

@end


@interface NSString (MSGraphRiskDetail)

- (MSGraphRiskDetail*) toMSGraphRiskDetail;

@end
