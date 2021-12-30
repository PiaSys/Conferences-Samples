// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphMobileAppIdentifier.h"

@interface MSGraphIosMobileAppIdentifier : MSGraphMobileAppIdentifier

@property (nonnull, nonatomic, setter=setBundleId:, getter=bundleId) NSString* bundleId;

@end
