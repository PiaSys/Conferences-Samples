// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainDnsUnavailableRecord()
{
    NSString* _domainDnsUnavailableRecordDescription;
}
@end

@implementation MSGraphDomainDnsUnavailableRecord

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.domainDnsUnavailableRecord";
    }
    return self;
}
- (NSString*) domainDnsUnavailableRecordDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDomainDnsUnavailableRecordDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}


@end
