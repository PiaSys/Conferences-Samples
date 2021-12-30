// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemAttachment()
{
    MSGraphOutlookItem* _item;
}
@end

@implementation MSGraphItemAttachment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.itemAttachment";
    }
    return self;
}
- (MSGraphOutlookItem*) item
{
    if(!_item){
        _item = [[MSGraphOutlookItem alloc] initWithDictionary: self.dictionary[@"item"]];
    }
    return _item;
}

- (void) setItem: (MSGraphOutlookItem*) val
{
    _item = val;
    self.dictionary[@"item"] = val;
}


@end
