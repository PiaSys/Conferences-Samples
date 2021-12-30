// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaPrompt()
{
    MSGraphMediaInfo* _mediaInfo;
}
@end

@implementation MSGraphMediaPrompt

- (MSGraphMediaInfo*) mediaInfo
{
    if(!_mediaInfo){
        _mediaInfo = [[MSGraphMediaInfo alloc] initWithDictionary: self.dictionary[@"mediaInfo"]];
    }
    return _mediaInfo;
}

- (void) setMediaInfo: (MSGraphMediaInfo*) val
{
    _mediaInfo = val;
    self.dictionary[@"mediaInfo"] = val;
}

@end
