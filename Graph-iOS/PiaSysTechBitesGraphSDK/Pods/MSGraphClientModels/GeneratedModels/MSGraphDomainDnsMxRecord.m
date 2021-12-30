// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainDnsMxRecord()
{
    NSString* _mailExchange;
    int32_t _preference;
}
@end

@implementation MSGraphDomainDnsMxRecord

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.domainDnsMxRecord";
    }
    return self;
}
- (NSString*) mailExchange
{
    return self.dictionary[@"mailExchange"];
}

- (void) setMailExchange: (NSString*) val
{
    self.dictionary[@"mailExchange"] = val;
}

- (int32_t) preference
{
    _preference = [self.dictionary[@"preference"] intValue];
    return _preference;
}

- (void) setPreference: (int32_t) val
{
    _preference = val;
    self.dictionary[@"preference"] = @(val);
}


@end
