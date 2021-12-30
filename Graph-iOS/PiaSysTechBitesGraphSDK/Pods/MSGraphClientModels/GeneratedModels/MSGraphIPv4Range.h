// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphIpRange.h"

@interface MSGraphIPv4Range : MSGraphIpRange

@property (nonnull, nonatomic, setter=setLowerAddress:, getter=lowerAddress) NSString* lowerAddress;
@property (nonnull, nonatomic, setter=setUpperAddress:, getter=upperAddress) NSString* upperAddress;

@end
