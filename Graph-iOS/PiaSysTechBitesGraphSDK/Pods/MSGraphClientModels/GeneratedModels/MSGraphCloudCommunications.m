// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCloudCommunications()
{
    NSArray* _calls;
    NSArray* _onlineMeetings;
}
@end

@implementation MSGraphCloudCommunications

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.cloudCommunications";
    }
    return self;
}
- (NSArray*) calls
{
    if(!_calls){
        
    NSMutableArray *callsResult = [NSMutableArray array];
    NSArray *calls = self.dictionary[@"calls"];

    if ([calls isKindOfClass:[NSArray class]]){
        for (id tempCall in calls){
            [callsResult addObject:tempCall];
        }
    }

    _calls = callsResult;
        
    }
    return _calls;
}

- (void) setCalls: (NSArray*) val
{
    _calls = val;
    self.dictionary[@"calls"] = val;
}

- (NSArray*) onlineMeetings
{
    if(!_onlineMeetings){
        
    NSMutableArray *onlineMeetingsResult = [NSMutableArray array];
    NSArray *onlineMeetings = self.dictionary[@"onlineMeetings"];

    if ([onlineMeetings isKindOfClass:[NSArray class]]){
        for (id tempOnlineMeeting in onlineMeetings){
            [onlineMeetingsResult addObject:tempOnlineMeeting];
        }
    }

    _onlineMeetings = onlineMeetingsResult;
        
    }
    return _onlineMeetings;
}

- (void) setOnlineMeetings: (NSArray*) val
{
    _onlineMeetings = val;
    self.dictionary[@"onlineMeetings"] = val;
}


@end
