// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEventMessage()
{
    MSGraphMeetingMessageType* _meetingMessageType;
    MSGraphEvent* _event;
}
@end

@implementation MSGraphEventMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.eventMessage";
    }
    return self;
}
- (MSGraphMeetingMessageType*) meetingMessageType
{
    if(!_meetingMessageType){
        _meetingMessageType = [self.dictionary[@"meetingMessageType"] toMSGraphMeetingMessageType];
    }
    return _meetingMessageType;
}

- (void) setMeetingMessageType: (MSGraphMeetingMessageType*) val
{
    _meetingMessageType = val;
    self.dictionary[@"meetingMessageType"] = val;
}

- (MSGraphEvent*) event
{
    if(!_event){
        _event = [[MSGraphEvent alloc] initWithDictionary: self.dictionary[@"event"]];
    }
    return _event;
}

- (void) setEvent: (MSGraphEvent*) val
{
    _event = val;
    self.dictionary[@"event"] = val;
}


@end
