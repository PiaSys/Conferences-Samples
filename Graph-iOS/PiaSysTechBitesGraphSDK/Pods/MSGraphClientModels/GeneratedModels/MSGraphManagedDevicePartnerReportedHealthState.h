// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedDevicePartnerReportedHealthStateValue){

	MSGraphManagedDevicePartnerReportedHealthStateUnknown = 0,
	MSGraphManagedDevicePartnerReportedHealthStateActivated = 1,
	MSGraphManagedDevicePartnerReportedHealthStateDeactivated = 2,
	MSGraphManagedDevicePartnerReportedHealthStateSecured = 3,
	MSGraphManagedDevicePartnerReportedHealthStateLowSeverity = 4,
	MSGraphManagedDevicePartnerReportedHealthStateMediumSeverity = 5,
	MSGraphManagedDevicePartnerReportedHealthStateHighSeverity = 6,
	MSGraphManagedDevicePartnerReportedHealthStateUnresponsive = 7,
	MSGraphManagedDevicePartnerReportedHealthStateCompromised = 8,
	MSGraphManagedDevicePartnerReportedHealthStateMisconfigured = 9,
    MSGraphManagedDevicePartnerReportedHealthStateEndOfEnum
};

@interface MSGraphManagedDevicePartnerReportedHealthState : NSObject

+(MSGraphManagedDevicePartnerReportedHealthState*) unknown;
+(MSGraphManagedDevicePartnerReportedHealthState*) activated;
+(MSGraphManagedDevicePartnerReportedHealthState*) deactivated;
+(MSGraphManagedDevicePartnerReportedHealthState*) secured;
+(MSGraphManagedDevicePartnerReportedHealthState*) lowSeverity;
+(MSGraphManagedDevicePartnerReportedHealthState*) mediumSeverity;
+(MSGraphManagedDevicePartnerReportedHealthState*) highSeverity;
+(MSGraphManagedDevicePartnerReportedHealthState*) unresponsive;
+(MSGraphManagedDevicePartnerReportedHealthState*) compromised;
+(MSGraphManagedDevicePartnerReportedHealthState*) misconfigured;

+(MSGraphManagedDevicePartnerReportedHealthState*) UnknownEnumValue;

+(MSGraphManagedDevicePartnerReportedHealthState*) managedDevicePartnerReportedHealthStateWithEnumValue:(MSGraphManagedDevicePartnerReportedHealthStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedDevicePartnerReportedHealthStateValue enumValue;

@end


@interface NSString (MSGraphManagedDevicePartnerReportedHealthState)

- (MSGraphManagedDevicePartnerReportedHealthState*) toMSGraphManagedDevicePartnerReportedHealthState;

@end
