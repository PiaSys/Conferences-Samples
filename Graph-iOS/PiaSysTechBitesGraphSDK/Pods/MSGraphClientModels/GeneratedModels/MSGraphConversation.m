// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConversation()
{
    NSString* _topic;
    BOOL _hasAttachments;
    NSDate* _lastDeliveredDateTime;
    NSArray* _uniqueSenders;
    NSString* _preview;
    NSArray* _threads;
}
@end

@implementation MSGraphConversation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.conversation";
    }
    return self;
}
- (NSString*) topic
{
    return self.dictionary[@"topic"];
}

- (void) setTopic: (NSString*) val
{
    self.dictionary[@"topic"] = val;
}

- (BOOL) hasAttachments
{
    _hasAttachments = [self.dictionary[@"hasAttachments"] boolValue];
    return _hasAttachments;
}

- (void) setHasAttachments: (BOOL) val
{
    _hasAttachments = val;
    self.dictionary[@"hasAttachments"] = @(val);
}

- (NSDate*) lastDeliveredDateTime
{
    if(!_lastDeliveredDateTime){
        _lastDeliveredDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastDeliveredDateTime"]];
    }
    return _lastDeliveredDateTime;
}

- (void) setLastDeliveredDateTime: (NSDate*) val
{
    _lastDeliveredDateTime = val;
    self.dictionary[@"lastDeliveredDateTime"] = [val ms_toString];
}

- (NSArray*) uniqueSenders
{
    return self.dictionary[@"uniqueSenders"];
}

- (void) setUniqueSenders: (NSArray*) val
{
    self.dictionary[@"uniqueSenders"] = val;
}

- (NSString*) preview
{
    return self.dictionary[@"preview"];
}

- (void) setPreview: (NSString*) val
{
    self.dictionary[@"preview"] = val;
}

- (NSArray*) threads
{
    if(!_threads){
        
    NSMutableArray *threadsResult = [NSMutableArray array];
    NSArray *threads = self.dictionary[@"threads"];

    if ([threads isKindOfClass:[NSArray class]]){
        for (id tempConversationThread in threads){
            [threadsResult addObject:tempConversationThread];
        }
    }

    _threads = threadsResult;
        
    }
    return _threads;
}

- (void) setThreads: (NSArray*) val
{
    _threads = val;
    self.dictionary[@"threads"] = val;
}


@end
