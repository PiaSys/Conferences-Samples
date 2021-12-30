// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphWindowsDeviceAccount.h"

@interface MSGraphWindowsDeviceAzureADAccount : MSGraphWindowsDeviceAccount

@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
