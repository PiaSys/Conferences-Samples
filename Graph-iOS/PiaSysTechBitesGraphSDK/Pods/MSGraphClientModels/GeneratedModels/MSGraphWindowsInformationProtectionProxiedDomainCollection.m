// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionProxiedDomainCollection()
{
    NSString* _displayName;
    NSArray* _proxiedDomains;
}
@end

@implementation MSGraphWindowsInformationProtectionProxiedDomainCollection

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSArray*) proxiedDomains
{
    if(!_proxiedDomains){
        
    NSMutableArray *proxiedDomainsResult = [NSMutableArray array];
    NSArray *proxiedDomains = self.dictionary[@"proxiedDomains"];

    if ([proxiedDomains isKindOfClass:[NSArray class]]){
        for (id tempProxiedDomain in proxiedDomains){
            [proxiedDomainsResult addObject:tempProxiedDomain];
        }
    }

    _proxiedDomains = proxiedDomainsResult;
        
    }
    return _proxiedDomains;
}

- (void) setProxiedDomains: (NSArray*) val
{
    _proxiedDomains = val;
    self.dictionary[@"proxiedDomains"] = val;
}

@end
