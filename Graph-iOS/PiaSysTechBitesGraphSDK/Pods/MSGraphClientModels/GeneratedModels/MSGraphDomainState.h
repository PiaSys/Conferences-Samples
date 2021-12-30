// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDomainState : MSObject

@property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;
@property (nullable, nonatomic, setter=setOperation:, getter=operation) NSString* operation;
@property (nullable, nonatomic, setter=setLastActionDateTime:, getter=lastActionDateTime) NSDate* lastActionDateTime;

@end
