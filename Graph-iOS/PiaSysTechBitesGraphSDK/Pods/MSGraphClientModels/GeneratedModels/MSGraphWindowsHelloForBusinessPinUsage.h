// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsHelloForBusinessPinUsageValue){

	MSGraphWindowsHelloForBusinessPinUsageAllowed = 0,
	MSGraphWindowsHelloForBusinessPinUsageRequired = 1,
	MSGraphWindowsHelloForBusinessPinUsageDisallowed = 2,
    MSGraphWindowsHelloForBusinessPinUsageEndOfEnum
};

@interface MSGraphWindowsHelloForBusinessPinUsage : NSObject

+(MSGraphWindowsHelloForBusinessPinUsage*) allowed;
+(MSGraphWindowsHelloForBusinessPinUsage*) required;
+(MSGraphWindowsHelloForBusinessPinUsage*) disallowed;

+(MSGraphWindowsHelloForBusinessPinUsage*) UnknownEnumValue;

+(MSGraphWindowsHelloForBusinessPinUsage*) windowsHelloForBusinessPinUsageWithEnumValue:(MSGraphWindowsHelloForBusinessPinUsageValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsHelloForBusinessPinUsageValue enumValue;

@end


@interface NSString (MSGraphWindowsHelloForBusinessPinUsage)

- (MSGraphWindowsHelloForBusinessPinUsage*) toMSGraphWindowsHelloForBusinessPinUsage;

@end
