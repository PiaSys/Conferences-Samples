// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeleted : MSObject

@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;

@end
