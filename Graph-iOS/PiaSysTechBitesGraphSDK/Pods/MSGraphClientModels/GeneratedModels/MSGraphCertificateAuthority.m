// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCertificateAuthority()
{
    BOOL _isRootAuthority;
    NSString* _certificateRevocationListUrl;
    NSString* _deltaCertificateRevocationListUrl;
    NSString* _certificate;
    NSString* _issuer;
    NSString* _issuerSki;
}
@end

@implementation MSGraphCertificateAuthority

- (BOOL) isRootAuthority
{
    _isRootAuthority = [self.dictionary[@"isRootAuthority"] boolValue];
    return _isRootAuthority;
}

- (void) setIsRootAuthority: (BOOL) val
{
    _isRootAuthority = val;
    self.dictionary[@"isRootAuthority"] = @(val);
}

- (NSString*) certificateRevocationListUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"certificateRevocationListUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"certificateRevocationListUrl"];
}

- (void) setCertificateRevocationListUrl: (NSString*) val
{
    self.dictionary[@"certificateRevocationListUrl"] = val;
}

- (NSString*) deltaCertificateRevocationListUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"deltaCertificateRevocationListUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"deltaCertificateRevocationListUrl"];
}

- (void) setDeltaCertificateRevocationListUrl: (NSString*) val
{
    self.dictionary[@"deltaCertificateRevocationListUrl"] = val;
}

- (NSString*) certificate
{
    return self.dictionary[@"certificate"];
}

- (void) setCertificate: (NSString*) val
{
    self.dictionary[@"certificate"] = val;
}

- (NSString*) issuer
{
    return self.dictionary[@"issuer"];
}

- (void) setIssuer: (NSString*) val
{
    self.dictionary[@"issuer"] = val;
}

- (NSString*) issuerSki
{
    return self.dictionary[@"issuerSki"];
}

- (void) setIssuerSki: (NSString*) val
{
    self.dictionary[@"issuerSki"] = val;
}

@end
