// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphContract()
{
    NSString* _contractType;
    NSString* _customerId;
    NSString* _defaultDomainName;
    NSString* _displayName;
}
@end

@implementation MSGraphContract

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.contract";
    }
    return self;
}
- (NSString*) contractType
{
    if([[NSNull null] isEqual:self.dictionary[@"contractType"]])
    {
        return nil;
    }   
    return self.dictionary[@"contractType"];
}

- (void) setContractType: (NSString*) val
{
    self.dictionary[@"contractType"] = val;
}

- (NSString*) customerId
{
    if([[NSNull null] isEqual:self.dictionary[@"customerId"]])
    {
        return nil;
    }   
    return self.dictionary[@"customerId"];
}

- (void) setCustomerId: (NSString*) val
{
    self.dictionary[@"customerId"] = val;
}

- (NSString*) defaultDomainName
{
    if([[NSNull null] isEqual:self.dictionary[@"defaultDomainName"]])
    {
        return nil;
    }   
    return self.dictionary[@"defaultDomainName"];
}

- (void) setDefaultDomainName: (NSString*) val
{
    self.dictionary[@"defaultDomainName"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}


@end
