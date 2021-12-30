// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphQuota : MSObject

@property (nonatomic, setter=setDeleted:, getter=deleted) int64_t deleted;
@property (nonatomic, setter=setRemaining:, getter=remaining) int64_t remaining;
@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
@property (nonatomic, setter=setTotal:, getter=total) int64_t total;
@property (nonatomic, setter=setUsed:, getter=used) int64_t used;

@end
