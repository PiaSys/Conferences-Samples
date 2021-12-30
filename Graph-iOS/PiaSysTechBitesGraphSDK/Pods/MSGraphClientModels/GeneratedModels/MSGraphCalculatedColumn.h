// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphCalculatedColumn : MSObject

@property (nullable, nonatomic, setter=setFormat:, getter=format) NSString* format;
@property (nullable, nonatomic, setter=setFormula:, getter=formula) NSString* formula;
@property (nullable, nonatomic, setter=setOutputType:, getter=outputType) NSString* outputType;

@end
