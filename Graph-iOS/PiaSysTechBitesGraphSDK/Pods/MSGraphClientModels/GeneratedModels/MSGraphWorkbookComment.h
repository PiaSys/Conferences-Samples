// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookCommentReply; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookComment : MSGraphEntity

  @property (nullable, nonatomic, setter=setContent:, getter=content) NSString* content;
    @property (nonnull, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
    @property (nullable, nonatomic, setter=setReplies:, getter=replies) NSArray* replies;
  
@end
