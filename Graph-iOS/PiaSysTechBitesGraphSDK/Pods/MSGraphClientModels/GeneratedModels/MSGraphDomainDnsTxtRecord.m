// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainDnsTxtRecord()
{
    NSString* _text;
}
@end

@implementation MSGraphDomainDnsTxtRecord

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.domainDnsTxtRecord";
    }
    return self;
}
- (NSString*) text
{
    return self.dictionary[@"text"];
}

- (void) setText: (NSString*) val
{
    self.dictionary[@"text"] = val;
}


@end
