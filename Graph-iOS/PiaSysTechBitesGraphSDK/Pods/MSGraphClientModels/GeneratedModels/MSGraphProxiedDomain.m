// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProxiedDomain()
{
    NSString* _ipAddressOrFQDN;
    NSString* _proxy;
}
@end

@implementation MSGraphProxiedDomain

- (NSString*) ipAddressOrFQDN
{
    return self.dictionary[@"ipAddressOrFQDN"];
}

- (void) setIpAddressOrFQDN: (NSString*) val
{
    self.dictionary[@"ipAddressOrFQDN"] = val;
}

- (NSString*) proxy
{
    if([[NSNull null] isEqual:self.dictionary[@"proxy"]])
    {
        return nil;
    }   
    return self.dictionary[@"proxy"];
}

- (void) setProxy: (NSString*) val
{
    self.dictionary[@"proxy"] = val;
}

@end
