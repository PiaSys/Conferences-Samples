// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphMediaInfo; 


#import "MSGraphPrompt.h"

@interface MSGraphMediaPrompt : MSGraphPrompt

@property (nonnull, nonatomic, setter=setMediaInfo:, getter=mediaInfo) MSGraphMediaInfo* mediaInfo;

@end
