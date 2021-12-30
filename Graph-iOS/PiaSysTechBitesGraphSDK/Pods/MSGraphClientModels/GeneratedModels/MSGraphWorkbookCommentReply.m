// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookCommentReply()
{
    NSString* _content;
    NSString* _contentType;
}
@end

@implementation MSGraphWorkbookCommentReply

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookCommentReply";
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


@end
