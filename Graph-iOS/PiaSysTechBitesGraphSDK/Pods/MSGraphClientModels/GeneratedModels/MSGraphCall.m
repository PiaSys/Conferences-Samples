// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCall()
{
    MSGraphCallState* _state;
    MSGraphCallMediaState* _mediaState;
    MSGraphResultInfo* _resultInfo;
    MSGraphCallDirection* _direction;
    NSString* _subject;
    NSString* _callbackUri;
    MSGraphParticipantInfo* _source;
    NSArray* _targets;
    NSArray* _requestedModalities;
    MSGraphMediaConfig* _mediaConfig;
    MSGraphChatInfo* _chatInfo;
    MSGraphMeetingInfo* _meetingInfo;
    NSString* _tenantId;
    NSString* _myParticipantId;
    MSGraphToneInfo* _toneInfo;
    NSArray* _participants;
    NSArray* _callOperations;
}
@end

@implementation MSGraphCall

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.call";
    }
    return self;
}
- (MSGraphCallState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphCallState];
    }
    return _state;
}

- (void) setState: (MSGraphCallState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (MSGraphCallMediaState*) mediaState
{
    if(!_mediaState){
        _mediaState = [[MSGraphCallMediaState alloc] initWithDictionary: self.dictionary[@"mediaState"]];
    }
    return _mediaState;
}

- (void) setMediaState: (MSGraphCallMediaState*) val
{
    _mediaState = val;
    self.dictionary[@"mediaState"] = val;
}

- (MSGraphResultInfo*) resultInfo
{
    if(!_resultInfo){
        _resultInfo = [[MSGraphResultInfo alloc] initWithDictionary: self.dictionary[@"resultInfo"]];
    }
    return _resultInfo;
}

- (void) setResultInfo: (MSGraphResultInfo*) val
{
    _resultInfo = val;
    self.dictionary[@"resultInfo"] = val;
}

- (MSGraphCallDirection*) direction
{
    if(!_direction){
        _direction = [self.dictionary[@"direction"] toMSGraphCallDirection];
    }
    return _direction;
}

- (void) setDirection: (MSGraphCallDirection*) val
{
    _direction = val;
    self.dictionary[@"direction"] = val;
}

- (NSString*) subject
{
    if([[NSNull null] isEqual:self.dictionary[@"subject"]])
    {
        return nil;
    }   
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
}

- (NSString*) callbackUri
{
    return self.dictionary[@"callbackUri"];
}

- (void) setCallbackUri: (NSString*) val
{
    self.dictionary[@"callbackUri"] = val;
}

- (MSGraphParticipantInfo*) source
{
    if(!_source){
        _source = [[MSGraphParticipantInfo alloc] initWithDictionary: self.dictionary[@"source"]];
    }
    return _source;
}

- (void) setSource: (MSGraphParticipantInfo*) val
{
    _source = val;
    self.dictionary[@"source"] = val;
}

- (NSArray*) targets
{
    if(!_targets){
        
    NSMutableArray *targetsResult = [NSMutableArray array];
    NSArray *targets = self.dictionary[@"targets"];

    if ([targets isKindOfClass:[NSArray class]]){
        for (id tempParticipantInfo in targets){
            [targetsResult addObject:tempParticipantInfo];
        }
    }

    _targets = targetsResult;
        
    }
    return _targets;
}

- (void) setTargets: (NSArray*) val
{
    _targets = val;
    self.dictionary[@"targets"] = val;
}

- (NSArray*) requestedModalities
{
    if(!_requestedModalities){
        
    NSMutableArray *requestedModalitiesResult = [NSMutableArray array];
    NSArray *requestedModalities = self.dictionary[@"requestedModalities"];

    if ([requestedModalities isKindOfClass:[NSArray class]]){
        for (id tempModality in requestedModalities){
            [requestedModalitiesResult addObject:tempModality];
        }
    }

    _requestedModalities = requestedModalitiesResult;
        
    }
    return _requestedModalities;
}

- (void) setRequestedModalities: (NSArray*) val
{
    _requestedModalities = val;
    self.dictionary[@"requestedModalities"] = val;
}

- (MSGraphMediaConfig*) mediaConfig
{
    if(!_mediaConfig){
        _mediaConfig = [[MSGraphMediaConfig alloc] initWithDictionary: self.dictionary[@"mediaConfig"]];
    }
    return _mediaConfig;
}

- (void) setMediaConfig: (MSGraphMediaConfig*) val
{
    _mediaConfig = val;
    self.dictionary[@"mediaConfig"] = val;
}

- (MSGraphChatInfo*) chatInfo
{
    if(!_chatInfo){
        _chatInfo = [[MSGraphChatInfo alloc] initWithDictionary: self.dictionary[@"chatInfo"]];
    }
    return _chatInfo;
}

- (void) setChatInfo: (MSGraphChatInfo*) val
{
    _chatInfo = val;
    self.dictionary[@"chatInfo"] = val;
}

- (MSGraphMeetingInfo*) meetingInfo
{
    if(!_meetingInfo){
        _meetingInfo = [[MSGraphMeetingInfo alloc] initWithDictionary: self.dictionary[@"meetingInfo"]];
    }
    return _meetingInfo;
}

- (void) setMeetingInfo: (MSGraphMeetingInfo*) val
{
    _meetingInfo = val;
    self.dictionary[@"meetingInfo"] = val;
}

- (NSString*) tenantId
{
    if([[NSNull null] isEqual:self.dictionary[@"tenantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"tenantId"];
}

- (void) setTenantId: (NSString*) val
{
    self.dictionary[@"tenantId"] = val;
}

- (NSString*) myParticipantId
{
    if([[NSNull null] isEqual:self.dictionary[@"myParticipantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"myParticipantId"];
}

- (void) setMyParticipantId: (NSString*) val
{
    self.dictionary[@"myParticipantId"] = val;
}

- (MSGraphToneInfo*) toneInfo
{
    if(!_toneInfo){
        _toneInfo = [[MSGraphToneInfo alloc] initWithDictionary: self.dictionary[@"toneInfo"]];
    }
    return _toneInfo;
}

- (void) setToneInfo: (MSGraphToneInfo*) val
{
    _toneInfo = val;
    self.dictionary[@"toneInfo"] = val;
}

- (NSArray*) participants
{
    if(!_participants){
        
    NSMutableArray *participantsResult = [NSMutableArray array];
    NSArray *participants = self.dictionary[@"participants"];

    if ([participants isKindOfClass:[NSArray class]]){
        for (id tempParticipant in participants){
            [participantsResult addObject:tempParticipant];
        }
    }

    _participants = participantsResult;
        
    }
    return _participants;
}

- (void) setParticipants: (NSArray*) val
{
    _participants = val;
    self.dictionary[@"participants"] = val;
}

- (NSArray*) callOperations
{
    if(!_callOperations){
        
    NSMutableArray *callOperationsResult = [NSMutableArray array];
    NSArray *callOperations = self.dictionary[@"operations"];

    if ([callOperations isKindOfClass:[NSArray class]]){
        for (id tempCommsOperation in callOperations){
            [callOperationsResult addObject:tempCommsOperation];
        }
    }

    _callOperations = callOperationsResult;
        
    }
    return _callOperations;
}

- (void) setCallOperations: (NSArray*) val
{
    _callOperations = val;
    self.dictionary[@"operations"] = val;
}


@end
