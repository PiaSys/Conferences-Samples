// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMediaState.h"


#import "MSObject.h"

@interface MSGraphCallMediaState : MSObject

@property (nullable, nonatomic, setter=setAudio:, getter=audio) MSGraphMediaState* audio;

@end
