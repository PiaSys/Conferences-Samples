// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDefaultColumnValue : MSObject

@property (nullable, nonatomic, setter=setFormula:, getter=formula) NSString* formula;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
