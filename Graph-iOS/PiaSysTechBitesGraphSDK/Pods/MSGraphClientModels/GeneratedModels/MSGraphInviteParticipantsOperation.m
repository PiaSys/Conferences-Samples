// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInviteParticipantsOperation()
{
    NSArray* _participants;
}
@end

@implementation MSGraphInviteParticipantsOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.inviteParticipantsOperation";
    }
    return self;
}
- (NSArray*) participants
{
    if(!_participants){
        
    NSMutableArray *participantsResult = [NSMutableArray array];
    NSArray *participants = self.dictionary[@"participants"];

    if ([participants isKindOfClass:[NSArray class]]){
        for (id tempInvitationParticipantInfo in participants){
            [participantsResult addObject:tempInvitationParticipantInfo];
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


@end
