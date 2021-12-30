// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAverageComparativeScore : MSObject

@property (nonatomic, setter=setAverageScore:, getter=averageScore) double averageScore;
@property (nullable, nonatomic, setter=setBasis:, getter=basis) NSString* basis;

@end
