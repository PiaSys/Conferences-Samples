// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphRgbColor : MSObject

@property (nonatomic, setter=setR:, getter=r) Byte r;
@property (nonatomic, setter=setG:, getter=g) Byte g;
@property (nonatomic, setter=setB:, getter=b) Byte b;

@end
