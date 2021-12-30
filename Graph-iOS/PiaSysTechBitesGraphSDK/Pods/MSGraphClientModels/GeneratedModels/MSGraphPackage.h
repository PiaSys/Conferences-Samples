// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPackage : MSObject

@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;

@end
