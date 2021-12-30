// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSecurityVendorInformation()
{
    NSString* _provider;
    NSString* _providerVersion;
    NSString* _subProvider;
    NSString* _vendor;
}
@end

@implementation MSGraphSecurityVendorInformation

- (NSString*) provider
{
    if([[NSNull null] isEqual:self.dictionary[@"provider"]])
    {
        return nil;
    }   
    return self.dictionary[@"provider"];
}

- (void) setProvider: (NSString*) val
{
    self.dictionary[@"provider"] = val;
}

- (NSString*) providerVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"providerVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"providerVersion"];
}

- (void) setProviderVersion: (NSString*) val
{
    self.dictionary[@"providerVersion"] = val;
}

- (NSString*) subProvider
{
    if([[NSNull null] isEqual:self.dictionary[@"subProvider"]])
    {
        return nil;
    }   
    return self.dictionary[@"subProvider"];
}

- (void) setSubProvider: (NSString*) val
{
    self.dictionary[@"subProvider"] = val;
}

- (NSString*) vendor
{
    if([[NSNull null] isEqual:self.dictionary[@"vendor"]])
    {
        return nil;
    }   
    return self.dictionary[@"vendor"];
}

- (void) setVendor: (NSString*) val
{
    self.dictionary[@"vendor"] = val;
}

@end
