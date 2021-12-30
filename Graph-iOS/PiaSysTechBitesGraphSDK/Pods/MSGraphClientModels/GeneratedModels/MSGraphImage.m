// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphImage()
{
    int32_t _height;
    int32_t _width;
}
@end

@implementation MSGraphImage

- (int32_t) height
{
    _height = [self.dictionary[@"height"] intValue];
    return _height;
}

- (void) setHeight: (int32_t) val
{
    _height = val;
    self.dictionary[@"height"] = @(val);
}

- (int32_t) width
{
    _width = [self.dictionary[@"width"] intValue];
    return _width;
}

- (void) setWidth: (int32_t) val
{
    _width = val;
    self.dictionary[@"width"] = @(val);
}

@end
