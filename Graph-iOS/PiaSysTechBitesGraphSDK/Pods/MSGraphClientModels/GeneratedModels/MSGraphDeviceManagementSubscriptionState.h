// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementSubscriptionStateValue){

	MSGraphDeviceManagementSubscriptionStatePending = 0,
	MSGraphDeviceManagementSubscriptionStateActive = 1,
	MSGraphDeviceManagementSubscriptionStateWarning = 2,
	MSGraphDeviceManagementSubscriptionStateDisabled = 3,
	MSGraphDeviceManagementSubscriptionStateDeleted = 4,
	MSGraphDeviceManagementSubscriptionStateBlocked = 5,
	MSGraphDeviceManagementSubscriptionStateLockedOut = 8,
    MSGraphDeviceManagementSubscriptionStateEndOfEnum
};

@interface MSGraphDeviceManagementSubscriptionState : NSObject

+(MSGraphDeviceManagementSubscriptionState*) pending;
+(MSGraphDeviceManagementSubscriptionState*) active;
+(MSGraphDeviceManagementSubscriptionState*) warning;
+(MSGraphDeviceManagementSubscriptionState*) disabled;
+(MSGraphDeviceManagementSubscriptionState*) deleted;
+(MSGraphDeviceManagementSubscriptionState*) blocked;
+(MSGraphDeviceManagementSubscriptionState*) lockedOut;

+(MSGraphDeviceManagementSubscriptionState*) UnknownEnumValue;

+(MSGraphDeviceManagementSubscriptionState*) deviceManagementSubscriptionStateWithEnumValue:(MSGraphDeviceManagementSubscriptionStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementSubscriptionStateValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementSubscriptionState)

- (MSGraphDeviceManagementSubscriptionState*) toMSGraphDeviceManagementSubscriptionState;

@end
