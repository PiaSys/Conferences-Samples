// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCallMediaState, MSGraphResultInfo, MSGraphParticipantInfo, MSGraphMediaConfig, MSGraphChatInfo, MSGraphMeetingInfo, MSGraphToneInfo, MSGraphParticipant, MSGraphCommsOperation; 
#import "MSGraphCallState.h"
#import "MSGraphCallDirection.h"
#import "MSGraphModality.h"


#import "MSGraphEntity.h"

@interface MSGraphCall : MSGraphEntity

  @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphCallState* state;
    @property (nullable, nonatomic, setter=setMediaState:, getter=mediaState) MSGraphCallMediaState* mediaState;
    @property (nullable, nonatomic, setter=setResultInfo:, getter=resultInfo) MSGraphResultInfo* resultInfo;
    @property (nullable, nonatomic, setter=setDirection:, getter=direction) MSGraphCallDirection* direction;
    @property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nonnull, nonatomic, setter=setCallbackUri:, getter=callbackUri) NSString* callbackUri;
    @property (nullable, nonatomic, setter=setSource:, getter=source) MSGraphParticipantInfo* source;
    @property (nullable, nonatomic, setter=setTargets:, getter=targets) NSArray* targets;
    @property (nullable, nonatomic, setter=setRequestedModalities:, getter=requestedModalities) NSArray* requestedModalities;
    @property (nullable, nonatomic, setter=setMediaConfig:, getter=mediaConfig) MSGraphMediaConfig* mediaConfig;
    @property (nullable, nonatomic, setter=setChatInfo:, getter=chatInfo) MSGraphChatInfo* chatInfo;
    @property (nullable, nonatomic, setter=setMeetingInfo:, getter=meetingInfo) MSGraphMeetingInfo* meetingInfo;
    @property (nullable, nonatomic, setter=setTenantId:, getter=tenantId) NSString* tenantId;
    @property (nullable, nonatomic, setter=setMyParticipantId:, getter=myParticipantId) NSString* myParticipantId;
    @property (nullable, nonatomic, setter=setToneInfo:, getter=toneInfo) MSGraphToneInfo* toneInfo;
    @property (nullable, nonatomic, setter=setParticipants:, getter=participants) NSArray* participants;
    @property (nullable, nonatomic, setter=setCallOperations:, getter=callOperations) NSArray* callOperations;
  
@end
