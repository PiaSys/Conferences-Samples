// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphCertificateAuthority : MSObject

@property (nonatomic, setter=setIsRootAuthority:, getter=isRootAuthority) BOOL isRootAuthority;
@property (nullable, nonatomic, setter=setCertificateRevocationListUrl:, getter=certificateRevocationListUrl) NSString* certificateRevocationListUrl;
@property (nullable, nonatomic, setter=setDeltaCertificateRevocationListUrl:, getter=deltaCertificateRevocationListUrl) NSString* deltaCertificateRevocationListUrl;
@property (nonnull, nonatomic, setter=setCertificate:, getter=certificate) NSString* certificate;
@property (nonnull, nonatomic, setter=setIssuer:, getter=issuer) NSString* issuer;
@property (nonnull, nonatomic, setter=setIssuerSki:, getter=issuerSki) NSString* issuerSki;

@end
