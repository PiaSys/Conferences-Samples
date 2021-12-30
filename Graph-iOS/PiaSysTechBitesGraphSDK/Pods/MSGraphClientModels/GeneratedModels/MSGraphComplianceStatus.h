// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphComplianceStatusValue){

	MSGraphComplianceStatusUnknown = 0,
	MSGraphComplianceStatusNotApplicable = 1,
	MSGraphComplianceStatusCompliant = 2,
	MSGraphComplianceStatusRemediated = 3,
	MSGraphComplianceStatusNonCompliant = 4,
	MSGraphComplianceStatusError = 5,
	MSGraphComplianceStatusConflict = 6,
	MSGraphComplianceStatusNotAssigned = 7,
    MSGraphComplianceStatusEndOfEnum
};

@interface MSGraphComplianceStatus : NSObject

+(MSGraphComplianceStatus*) unknown;
+(MSGraphComplianceStatus*) notApplicable;
+(MSGraphComplianceStatus*) compliant;
+(MSGraphComplianceStatus*) remediated;
+(MSGraphComplianceStatus*) nonCompliant;
+(MSGraphComplianceStatus*) error;
+(MSGraphComplianceStatus*) conflict;
+(MSGraphComplianceStatus*) notAssigned;

+(MSGraphComplianceStatus*) UnknownEnumValue;

+(MSGraphComplianceStatus*) complianceStatusWithEnumValue:(MSGraphComplianceStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphComplianceStatusValue enumValue;

@end


@interface NSString (MSGraphComplianceStatus)

- (MSGraphComplianceStatus*) toMSGraphComplianceStatus;

@end
