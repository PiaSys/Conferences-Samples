// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDriveItemVersion()
{
    int64_t _size;
}
@end

@implementation MSGraphDriveItemVersion

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.driveItemVersion";
    }
    return self;
}
- (int64_t) size
{
    _size = [self.dictionary[@"size"] longLongValue];
    return _size;
}

- (void) setSize: (int64_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}


@end
