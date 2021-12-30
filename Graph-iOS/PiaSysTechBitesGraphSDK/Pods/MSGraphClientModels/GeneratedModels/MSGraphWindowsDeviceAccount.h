// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWindowsDeviceAccount : MSObject

@property (nullable, nonatomic, setter=setPassword:, getter=password) NSString* password;

@end
