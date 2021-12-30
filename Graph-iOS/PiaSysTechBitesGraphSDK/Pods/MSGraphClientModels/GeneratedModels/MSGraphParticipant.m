// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphParticipant()
{
    MSGraphParticipantInfo* _info;
    NSArray* _mediaStreams;
    BOOL _isMuted;
    BOOL _isInLobby;
}
@end

@implementation MSGraphParticipant

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.participant";
    }
    return self;
}
- (MSGraphParticipantInfo*) info
{
    if(!_info){
        _info = [[MSGraphParticipantInfo alloc] initWithDictionary: self.dictionary[@"info"]];
    }
    return _info;
}

- (void) setInfo: (MSGraphParticipantInfo*) val
{
    _info = val;
    self.dictionary[@"info"] = val;
}

- (NSArray*) mediaStreams
{
    if(!_mediaStreams){
        
    NSMutableArray *mediaStreamsResult = [NSMutableArray array];
    NSArray *mediaStreams = self.dictionary[@"mediaStreams"];

    if ([mediaStreams isKindOfClass:[NSArray class]]){
        for (id tempMediaStream in mediaStreams){
            [mediaStreamsResult addObject:tempMediaStream];
        }
    }

    _mediaStreams = mediaStreamsResult;
        
    }
    return _mediaStreams;
}

- (void) setMediaStreams: (NSArray*) val
{
    _mediaStreams = val;
    self.dictionary[@"mediaStreams"] = val;
}

- (BOOL) isMuted
{
    _isMuted = [self.dictionary[@"isMuted"] boolValue];
    return _isMuted;
}

- (void) setIsMuted: (BOOL) val
{
    _isMuted = val;
    self.dictionary[@"isMuted"] = @(val);
}

- (BOOL) isInLobby
{
    _isInLobby = [self.dictionary[@"isInLobby"] boolValue];
    return _isInLobby;
}

- (void) setIsInLobby: (BOOL) val
{
    _isInLobby = val;
    self.dictionary[@"isInLobby"] = @(val);
}


@end
