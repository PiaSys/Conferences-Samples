// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTone.h"


#import "MSObject.h"

@interface MSGraphToneInfo : MSObject

@property (nonatomic, setter=setSequenceId:, getter=sequenceId) int64_t sequenceId;
@property (nonnull, nonatomic, setter=setTone:, getter=tone) MSGraphTone* tone;

@end
