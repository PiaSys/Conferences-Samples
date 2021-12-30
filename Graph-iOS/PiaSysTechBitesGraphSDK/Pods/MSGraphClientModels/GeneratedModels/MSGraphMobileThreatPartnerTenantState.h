// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMobileThreatPartnerTenantStateValue){

	MSGraphMobileThreatPartnerTenantStateUnavailable = 0,
	MSGraphMobileThreatPartnerTenantStateAvailable = 1,
	MSGraphMobileThreatPartnerTenantStateEnabled = 2,
	MSGraphMobileThreatPartnerTenantStateUnresponsive = 3,
    MSGraphMobileThreatPartnerTenantStateEndOfEnum
};

@interface MSGraphMobileThreatPartnerTenantState : NSObject

+(MSGraphMobileThreatPartnerTenantState*) unavailable;
+(MSGraphMobileThreatPartnerTenantState*) available;
+(MSGraphMobileThreatPartnerTenantState*) enabled;
+(MSGraphMobileThreatPartnerTenantState*) unresponsive;

+(MSGraphMobileThreatPartnerTenantState*) UnknownEnumValue;

+(MSGraphMobileThreatPartnerTenantState*) mobileThreatPartnerTenantStateWithEnumValue:(MSGraphMobileThreatPartnerTenantStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMobileThreatPartnerTenantStateValue enumValue;

@end


@interface NSString (MSGraphMobileThreatPartnerTenantState)

- (MSGraphMobileThreatPartnerTenantState*) toMSGraphMobileThreatPartnerTenantState;

@end
