// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTeamGuestSettings : MSObject

@property (nonatomic, setter=setAllowCreateUpdateChannels:, getter=allowCreateUpdateChannels) BOOL allowCreateUpdateChannels;
@property (nonatomic, setter=setAllowDeleteChannels:, getter=allowDeleteChannels) BOOL allowDeleteChannels;

@end
