// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphVppLicensingType : MSObject

@property (nonatomic, setter=setSupportsUserLicensing:, getter=supportsUserLicensing) BOOL supportsUserLicensing;
@property (nonatomic, setter=setSupportsDeviceLicensing:, getter=supportsDeviceLicensing) BOOL supportsDeviceLicensing;

@end
