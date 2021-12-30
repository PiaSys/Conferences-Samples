// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppStatusRaw()
{
    NSDictionary* _content;
}
@end

@implementation MSGraphManagedAppStatusRaw

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedAppStatusRaw";
    }
    return self;
}
- (NSDictionary*) content
{
    if(!_content){
        _content = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"content"]];
    }
    return _content;
}

- (void) setContent: (NSDictionary*) val
{
    _content = val;
    self.dictionary[@"content"] = val;
}


@end
