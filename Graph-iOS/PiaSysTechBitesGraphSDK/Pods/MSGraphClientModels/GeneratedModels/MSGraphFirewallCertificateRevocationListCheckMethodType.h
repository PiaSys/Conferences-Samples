// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFirewallCertificateRevocationListCheckMethodTypeValue){

	MSGraphFirewallCertificateRevocationListCheckMethodTypeDeviceDefault = 0,
	MSGraphFirewallCertificateRevocationListCheckMethodTypeNone = 1,
	MSGraphFirewallCertificateRevocationListCheckMethodTypeAttempt = 2,
	MSGraphFirewallCertificateRevocationListCheckMethodTypeRequire = 3,
    MSGraphFirewallCertificateRevocationListCheckMethodTypeEndOfEnum
};

@interface MSGraphFirewallCertificateRevocationListCheckMethodType : NSObject

+(MSGraphFirewallCertificateRevocationListCheckMethodType*) deviceDefault;
+(MSGraphFirewallCertificateRevocationListCheckMethodType*) none;
+(MSGraphFirewallCertificateRevocationListCheckMethodType*) attempt;
+(MSGraphFirewallCertificateRevocationListCheckMethodType*) require;

+(MSGraphFirewallCertificateRevocationListCheckMethodType*) UnknownEnumValue;

+(MSGraphFirewallCertificateRevocationListCheckMethodType*) firewallCertificateRevocationListCheckMethodTypeWithEnumValue:(MSGraphFirewallCertificateRevocationListCheckMethodTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFirewallCertificateRevocationListCheckMethodTypeValue enumValue;

@end


@interface NSString (MSGraphFirewallCertificateRevocationListCheckMethodType)

- (MSGraphFirewallCertificateRevocationListCheckMethodType*) toMSGraphFirewallCertificateRevocationListCheckMethodType;

@end
