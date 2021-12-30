// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphContentTypeOrder()
{
    BOOL _contentTypeOrderDefault;
    int32_t _position;
}
@end

@implementation MSGraphContentTypeOrder

- (BOOL) contentTypeOrderDefault
{
    _contentTypeOrderDefault = [self.dictionary[@"default"] boolValue];
    return _contentTypeOrderDefault;
}

- (void) setContentTypeOrderDefault: (BOOL) val
{
    _contentTypeOrderDefault = val;
    self.dictionary[@"default"] = @(val);
}

- (int32_t) position
{
    _position = [self.dictionary[@"position"] intValue];
    return _position;
}

- (void) setPosition: (int32_t) val
{
    _position = val;
    self.dictionary[@"position"] = @(val);
}

@end
