// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphWindowsDeviceAccount.h"

@interface MSGraphWindowsDeviceADAccount : MSGraphWindowsDeviceAccount

@property (nullable, nonatomic, setter=setDomainName:, getter=domainName) NSString* domainName;
@property (nullable, nonatomic, setter=setUserName:, getter=userName) NSString* userName;

@end
