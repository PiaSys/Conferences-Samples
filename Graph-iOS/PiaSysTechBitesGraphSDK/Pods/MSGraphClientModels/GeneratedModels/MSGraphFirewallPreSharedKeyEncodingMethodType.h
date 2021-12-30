// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFirewallPreSharedKeyEncodingMethodTypeValue){

	MSGraphFirewallPreSharedKeyEncodingMethodTypeDeviceDefault = 0,
	MSGraphFirewallPreSharedKeyEncodingMethodTypeNone = 1,
	MSGraphFirewallPreSharedKeyEncodingMethodTypeUtF8 = 2,
    MSGraphFirewallPreSharedKeyEncodingMethodTypeEndOfEnum
};

@interface MSGraphFirewallPreSharedKeyEncodingMethodType : NSObject

+(MSGraphFirewallPreSharedKeyEncodingMethodType*) deviceDefault;
+(MSGraphFirewallPreSharedKeyEncodingMethodType*) none;
+(MSGraphFirewallPreSharedKeyEncodingMethodType*) utF8;

+(MSGraphFirewallPreSharedKeyEncodingMethodType*) UnknownEnumValue;

+(MSGraphFirewallPreSharedKeyEncodingMethodType*) firewallPreSharedKeyEncodingMethodTypeWithEnumValue:(MSGraphFirewallPreSharedKeyEncodingMethodTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFirewallPreSharedKeyEncodingMethodTypeValue enumValue;

@end


@interface NSString (MSGraphFirewallPreSharedKeyEncodingMethodType)

- (MSGraphFirewallPreSharedKeyEncodingMethodType*) toMSGraphFirewallPreSharedKeyEncodingMethodType;

@end
