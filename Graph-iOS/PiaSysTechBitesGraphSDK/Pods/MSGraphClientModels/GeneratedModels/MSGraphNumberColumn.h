// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphNumberColumn : MSObject

@property (nullable, nonatomic, setter=setDecimalPlaces:, getter=decimalPlaces) NSString* decimalPlaces;
@property (nullable, nonatomic, setter=setDisplayAs:, getter=displayAs) NSString* displayAs;
@property (nonatomic, setter=setMaximum:, getter=maximum) double maximum;
@property (nonatomic, setter=setMinimum:, getter=minimum) double minimum;

@end
