// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEnablementValue){

	MSGraphEnablementNotConfigured = 0,
	MSGraphEnablementEnabled = 1,
	MSGraphEnablementDisabled = 2,
    MSGraphEnablementEndOfEnum
};

@interface MSGraphEnablement : NSObject

+(MSGraphEnablement*) notConfigured;
+(MSGraphEnablement*) enabled;
+(MSGraphEnablement*) disabled;

+(MSGraphEnablement*) UnknownEnumValue;

+(MSGraphEnablement*) enablementWithEnumValue:(MSGraphEnablementValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEnablementValue enumValue;

@end


@interface NSString (MSGraphEnablement)

- (MSGraphEnablement*) toMSGraphEnablement;

@end
