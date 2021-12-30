// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementExchangeAccessStateValue){

	MSGraphDeviceManagementExchangeAccessStateNone = 0,
	MSGraphDeviceManagementExchangeAccessStateUnknown = 1,
	MSGraphDeviceManagementExchangeAccessStateAllowed = 2,
	MSGraphDeviceManagementExchangeAccessStateBlocked = 3,
	MSGraphDeviceManagementExchangeAccessStateQuarantined = 4,
    MSGraphDeviceManagementExchangeAccessStateEndOfEnum
};

@interface MSGraphDeviceManagementExchangeAccessState : NSObject

+(MSGraphDeviceManagementExchangeAccessState*) none;
+(MSGraphDeviceManagementExchangeAccessState*) unknown;
+(MSGraphDeviceManagementExchangeAccessState*) allowed;
+(MSGraphDeviceManagementExchangeAccessState*) blocked;
+(MSGraphDeviceManagementExchangeAccessState*) quarantined;

+(MSGraphDeviceManagementExchangeAccessState*) UnknownEnumValue;

+(MSGraphDeviceManagementExchangeAccessState*) deviceManagementExchangeAccessStateWithEnumValue:(MSGraphDeviceManagementExchangeAccessStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementExchangeAccessStateValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementExchangeAccessState)

- (MSGraphDeviceManagementExchangeAccessState*) toMSGraphDeviceManagementExchangeAccessState;

@end
