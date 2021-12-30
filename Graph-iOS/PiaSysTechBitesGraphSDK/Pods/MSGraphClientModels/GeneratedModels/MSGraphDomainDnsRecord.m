// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainDnsRecord()
{
    BOOL _isOptional;
    NSString* _label;
    NSString* _recordType;
    NSString* _supportedService;
    int32_t _ttl;
}
@end

@implementation MSGraphDomainDnsRecord

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.domainDnsRecord";
    }
    return self;
}
- (BOOL) isOptional
{
    _isOptional = [self.dictionary[@"isOptional"] boolValue];
    return _isOptional;
}

- (void) setIsOptional: (BOOL) val
{
    _isOptional = val;
    self.dictionary[@"isOptional"] = @(val);
}

- (NSString*) label
{
    return self.dictionary[@"label"];
}

- (void) setLabel: (NSString*) val
{
    self.dictionary[@"label"] = val;
}

- (NSString*) recordType
{
    if([[NSNull null] isEqual:self.dictionary[@"recordType"]])
    {
        return nil;
    }   
    return self.dictionary[@"recordType"];
}

- (void) setRecordType: (NSString*) val
{
    self.dictionary[@"recordType"] = val;
}

- (NSString*) supportedService
{
    return self.dictionary[@"supportedService"];
}

- (void) setSupportedService: (NSString*) val
{
    self.dictionary[@"supportedService"] = val;
}

- (int32_t) ttl
{
    _ttl = [self.dictionary[@"ttl"] intValue];
    return _ttl;
}

- (void) setTtl: (int32_t) val
{
    _ttl = val;
    self.dictionary[@"ttl"] = @(val);
}


@end
