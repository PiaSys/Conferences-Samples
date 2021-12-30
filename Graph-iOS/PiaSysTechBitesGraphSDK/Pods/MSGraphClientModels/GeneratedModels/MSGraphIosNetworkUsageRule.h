// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAppListItem; 


#import "MSObject.h"

@interface MSGraphIosNetworkUsageRule : MSObject

@property (nullable, nonatomic, setter=setManagedApps:, getter=managedApps) NSArray* managedApps;
@property (nonatomic, setter=setCellularDataBlockWhenRoaming:, getter=cellularDataBlockWhenRoaming) BOOL cellularDataBlockWhenRoaming;
@property (nonatomic, setter=setCellularDataBlocked:, getter=cellularDataBlocked) BOOL cellularDataBlocked;

@end
