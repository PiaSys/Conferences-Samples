// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphComplianceStateValue){

	MSGraphComplianceStateUnknown = 0,
	MSGraphComplianceStateCompliant = 1,
	MSGraphComplianceStateNoncompliant = 2,
	MSGraphComplianceStateConflict = 3,
	MSGraphComplianceStateError = 4,
	MSGraphComplianceStateInGracePeriod = 254,
	MSGraphComplianceStateConfigManager = 255,
    MSGraphComplianceStateEndOfEnum
};

@interface MSGraphComplianceState : NSObject

+(MSGraphComplianceState*) unknown;
+(MSGraphComplianceState*) compliant;
+(MSGraphComplianceState*) noncompliant;
+(MSGraphComplianceState*) conflict;
+(MSGraphComplianceState*) error;
+(MSGraphComplianceState*) inGracePeriod;
+(MSGraphComplianceState*) configManager;

+(MSGraphComplianceState*) UnknownEnumValue;

+(MSGraphComplianceState*) complianceStateWithEnumValue:(MSGraphComplianceStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphComplianceStateValue enumValue;

@end


@interface NSString (MSGraphComplianceState)

- (MSGraphComplianceState*) toMSGraphComplianceState;

@end
