// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnenotePagePreviewLinks()
{
    MSGraphExternalLink* _previewImageUrl;
}
@end

@implementation MSGraphOnenotePagePreviewLinks

- (MSGraphExternalLink*) previewImageUrl
{
    if(!_previewImageUrl){
        _previewImageUrl = [[MSGraphExternalLink alloc] initWithDictionary: self.dictionary[@"previewImageUrl"]];
    }
    return _previewImageUrl;
}

- (void) setPreviewImageUrl: (MSGraphExternalLink*) val
{
    _previewImageUrl = val;
    self.dictionary[@"previewImageUrl"] = val;
}

@end
