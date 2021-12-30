// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphMobileAppIdentifier.h"

@interface MSGraphAndroidMobileAppIdentifier : MSGraphMobileAppIdentifier

@property (nonnull, nonatomic, setter=setPackageId:, getter=packageId) NSString* packageId;

@end
