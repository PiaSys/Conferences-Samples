// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphWindowsDeviceAccount; 


#import "MSObject.h"

@interface MSGraphUpdateWindowsDeviceAccountActionParameter : MSObject

@property (nullable, nonatomic, setter=setDeviceAccount:, getter=deviceAccount) MSGraphWindowsDeviceAccount* deviceAccount;
@property (nonatomic, setter=setPasswordRotationEnabled:, getter=passwordRotationEnabled) BOOL passwordRotationEnabled;
@property (nonatomic, setter=setCalendarSyncEnabled:, getter=calendarSyncEnabled) BOOL calendarSyncEnabled;
@property (nullable, nonatomic, setter=setDeviceAccountEmail:, getter=deviceAccountEmail) NSString* deviceAccountEmail;
@property (nullable, nonatomic, setter=setExchangeServer:, getter=exchangeServer) NSString* exchangeServer;
@property (nullable, nonatomic, setter=setSessionInitiationProtocalAddress:, getter=sessionInitiationProtocalAddress) NSString* sessionInitiationProtocalAddress;

@end
