// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphModality.h"
#import "MSGraphMediaDirection.h"


#import "MSObject.h"

@interface MSGraphMediaStream : MSObject

@property (nonnull, nonatomic, setter=setMediaType:, getter=mediaType) MSGraphModality* mediaType;
@property (nullable, nonatomic, setter=setLabel:, getter=label) NSString* label;
@property (nonnull, nonatomic, setter=setSourceId:, getter=sourceId) NSString* sourceId;
@property (nonnull, nonatomic, setter=setDirection:, getter=direction) MSGraphMediaDirection* direction;
@property (nonatomic, setter=setServerMuted:, getter=serverMuted) BOOL serverMuted;

@end
