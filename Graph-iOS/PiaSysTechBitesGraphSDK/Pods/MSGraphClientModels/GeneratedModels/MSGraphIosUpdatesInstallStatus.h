// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphIosUpdatesInstallStatusValue){

	MSGraphIosUpdatesInstallStatusDownloading = -2016330712,
	MSGraphIosUpdatesInstallStatusDownloadFailed = -2016330711,
	MSGraphIosUpdatesInstallStatusDownloadRequiresComputer = -2016330710,
	MSGraphIosUpdatesInstallStatusDownloadInsufficientSpace = -2016330709,
	MSGraphIosUpdatesInstallStatusDownloadInsufficientPower = -2016330708,
	MSGraphIosUpdatesInstallStatusDownloadInsufficientNetwork = -2016330707,
	MSGraphIosUpdatesInstallStatusInstalling = -2016330706,
	MSGraphIosUpdatesInstallStatusInstallInsufficientSpace = -2016330705,
	MSGraphIosUpdatesInstallStatusInstallInsufficientPower = -2016330704,
	MSGraphIosUpdatesInstallStatusInstallPhoneCallInProgress = -2016330703,
	MSGraphIosUpdatesInstallStatusInstallFailed = -2016330702,
	MSGraphIosUpdatesInstallStatusNotSupportedOperation = -2016330701,
	MSGraphIosUpdatesInstallStatusSharedDeviceUserLoggedInError = -2016330699,
	MSGraphIosUpdatesInstallStatusSuccess = 0,
	MSGraphIosUpdatesInstallStatusAvailable = 1,
	MSGraphIosUpdatesInstallStatusIdle = 2,
	MSGraphIosUpdatesInstallStatusUnknown = 3,
    MSGraphIosUpdatesInstallStatusEndOfEnum
};

@interface MSGraphIosUpdatesInstallStatus : NSObject

+(MSGraphIosUpdatesInstallStatus*) downloading;
+(MSGraphIosUpdatesInstallStatus*) downloadFailed;
+(MSGraphIosUpdatesInstallStatus*) downloadRequiresComputer;
+(MSGraphIosUpdatesInstallStatus*) downloadInsufficientSpace;
+(MSGraphIosUpdatesInstallStatus*) downloadInsufficientPower;
+(MSGraphIosUpdatesInstallStatus*) downloadInsufficientNetwork;
+(MSGraphIosUpdatesInstallStatus*) installing;
+(MSGraphIosUpdatesInstallStatus*) installInsufficientSpace;
+(MSGraphIosUpdatesInstallStatus*) installInsufficientPower;
+(MSGraphIosUpdatesInstallStatus*) installPhoneCallInProgress;
+(MSGraphIosUpdatesInstallStatus*) installFailed;
+(MSGraphIosUpdatesInstallStatus*) notSupportedOperation;
+(MSGraphIosUpdatesInstallStatus*) sharedDeviceUserLoggedInError;
+(MSGraphIosUpdatesInstallStatus*) success;
+(MSGraphIosUpdatesInstallStatus*) available;
+(MSGraphIosUpdatesInstallStatus*) idle;
+(MSGraphIosUpdatesInstallStatus*) unknown;

+(MSGraphIosUpdatesInstallStatus*) UnknownEnumValue;

+(MSGraphIosUpdatesInstallStatus*) iosUpdatesInstallStatusWithEnumValue:(MSGraphIosUpdatesInstallStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphIosUpdatesInstallStatusValue enumValue;

@end


@interface NSString (MSGraphIosUpdatesInstallStatus)

- (MSGraphIosUpdatesInstallStatus*) toMSGraphIosUpdatesInstallStatus;

@end
