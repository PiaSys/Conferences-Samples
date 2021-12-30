// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphWindowsInformationProtectionApp.h"

@interface MSGraphWindowsInformationProtectionDesktopApp : MSGraphWindowsInformationProtectionApp

@property (nonnull, nonatomic, setter=setBinaryName:, getter=binaryName) NSString* binaryName;
@property (nullable, nonatomic, setter=setBinaryVersionLow:, getter=binaryVersionLow) NSString* binaryVersionLow;
@property (nullable, nonatomic, setter=setBinaryVersionHigh:, getter=binaryVersionHigh) NSString* binaryVersionHigh;

@end
