// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphItemActionStat : MSObject

@property (nonatomic, setter=setActionCount:, getter=actionCount) int32_t actionCount;
@property (nonatomic, setter=setActorCount:, getter=actorCount) int32_t actorCount;

@end
