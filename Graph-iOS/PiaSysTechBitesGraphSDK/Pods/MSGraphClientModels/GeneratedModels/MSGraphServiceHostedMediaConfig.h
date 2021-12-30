// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphMediaInfo; 


#import "MSGraphMediaConfig.h"

@interface MSGraphServiceHostedMediaConfig : MSGraphMediaConfig

@property (nullable, nonatomic, setter=setPreFetchMedia:, getter=preFetchMedia) NSArray* preFetchMedia;

@end
