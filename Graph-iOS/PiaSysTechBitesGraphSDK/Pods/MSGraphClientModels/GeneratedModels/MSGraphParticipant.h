// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphParticipantInfo, MSGraphMediaStream; 


#import "MSGraphEntity.h"

@interface MSGraphParticipant : MSGraphEntity

  @property (nonnull, nonatomic, setter=setInfo:, getter=info) MSGraphParticipantInfo* info;
    @property (nullable, nonatomic, setter=setMediaStreams:, getter=mediaStreams) NSArray* mediaStreams;
    @property (nonatomic, setter=setIsMuted:, getter=isMuted) BOOL isMuted;
    @property (nonatomic, setter=setIsInLobby:, getter=isInLobby) BOOL isInLobby;
  
@end
