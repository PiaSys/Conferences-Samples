// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookComment()
{
    NSString* _content;
    NSString* _contentType;
    NSArray* _replies;
}
@end

@implementation MSGraphWorkbookComment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookComment";
    }
    return self;
}
- (NSString*) content
{
    if([[NSNull null] isEqual:self.dictionary[@"content"]])
    {
        return nil;
    }   
    return self.dictionary[@"content"];
}

- (void) setContent: (NSString*) val
{
    self.dictionary[@"content"] = val;
}

- (NSString*) contentType
{
    return self.dictionary[@"contentType"];
}

- (void) setContentType: (NSString*) val
{
    self.dictionary[@"contentType"] = val;
}

- (NSArray*) replies
{
    if(!_replies){
        
    NSMutableArray *repliesResult = [NSMutableArray array];
    NSArray *replies = self.dictionary[@"replies"];

    if ([replies isKindOfClass:[NSArray class]]){
        for (id tempWorkbookCommentReply in replies){
            [repliesResult addObject:tempWorkbookCommentReply];
        }
    }

    _replies = repliesResult;
        
    }
    return _replies;
}

- (void) setReplies: (NSArray*) val
{
    _replies = val;
    self.dictionary[@"replies"] = val;
}


@end
