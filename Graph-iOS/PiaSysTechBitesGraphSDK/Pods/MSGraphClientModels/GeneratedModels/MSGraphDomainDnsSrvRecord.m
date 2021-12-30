// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainDnsSrvRecord()
{
    NSString* _nameTarget;
    int32_t _port;
    int32_t _priority;
    NSString* _domainDnsSrvRecordProtocol;
    NSString* _service;
    int32_t _weight;
}
@end

@implementation MSGraphDomainDnsSrvRecord

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.domainDnsSrvRecord";
    }
    return self;
}
- (NSString*) nameTarget
{
    if([[NSNull null] isEqual:self.dictionary[@"nameTarget"]])
    {
        return nil;
    }   
    return self.dictionary[@"nameTarget"];
}

- (void) setNameTarget: (NSString*) val
{
    self.dictionary[@"nameTarget"] = val;
}

- (int32_t) port
{
    _port = [self.dictionary[@"port"] intValue];
    return _port;
}

- (void) setPort: (int32_t) val
{
    _port = val;
    self.dictionary[@"port"] = @(val);
}

- (int32_t) priority
{
    _priority = [self.dictionary[@"priority"] intValue];
    return _priority;
}

- (void) setPriority: (int32_t) val
{
    _priority = val;
    self.dictionary[@"priority"] = @(val);
}

- (NSString*) domainDnsSrvRecordProtocol
{
    if([[NSNull null] isEqual:self.dictionary[@"protocol"]])
    {
        return nil;
    }   
    return self.dictionary[@"protocol"];
}

- (void) setDomainDnsSrvRecordProtocol: (NSString*) val
{
    self.dictionary[@"protocol"] = val;
}

- (NSString*) service
{
    if([[NSNull null] isEqual:self.dictionary[@"service"]])
    {
        return nil;
    }   
    return self.dictionary[@"service"];
}

- (void) setService: (NSString*) val
{
    self.dictionary[@"service"] = val;
}

- (int32_t) weight
{
    _weight = [self.dictionary[@"weight"] intValue];
    return _weight;
}

- (void) setWeight: (int32_t) val
{
    _weight = val;
    self.dictionary[@"weight"] = @(val);
}


@end
