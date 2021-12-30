// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDateTimeColumn : MSObject

@property (nullable, nonatomic, setter=setDisplayAs:, getter=displayAs) NSString* displayAs;
@property (nullable, nonatomic, setter=setFormat:, getter=format) NSString* format;

@end
