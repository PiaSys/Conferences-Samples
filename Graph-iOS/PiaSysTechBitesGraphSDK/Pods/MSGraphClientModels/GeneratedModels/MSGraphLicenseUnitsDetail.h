// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphLicenseUnitsDetail : MSObject

@property (nonatomic, setter=setEnabled:, getter=enabled) int32_t enabled;
@property (nonatomic, setter=setSuspended:, getter=suspended) int32_t suspended;
@property (nonatomic, setter=setWarning:, getter=warning) int32_t warning;

@end
