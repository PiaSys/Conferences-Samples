// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphDeviceActionResult.h"

@interface MSGraphDeleteUserFromSharedAppleDeviceActionResult : MSGraphDeviceActionResult

@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
