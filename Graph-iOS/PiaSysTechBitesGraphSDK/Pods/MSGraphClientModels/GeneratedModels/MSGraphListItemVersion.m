// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphListItemVersion()
{
    MSGraphFieldValueSet* _fields;
}
@end

@implementation MSGraphListItemVersion

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.listItemVersion";
    }
    return self;
}
- (MSGraphFieldValueSet*) fields
{
    if(!_fields){
        _fields = [[MSGraphFieldValueSet alloc] initWithDictionary: self.dictionary[@"fields"]];
    }
    return _fields;
}

- (void) setFields: (MSGraphFieldValueSet*) val
{
    _fields = val;
    self.dictionary[@"fields"] = val;
}


@end
