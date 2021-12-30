// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphApplicationTypeValue){

	MSGraphApplicationTypeUniversal = 1,
	MSGraphApplicationTypeDesktop = 2,
    MSGraphApplicationTypeEndOfEnum
};

@interface MSGraphApplicationType : NSObject

+(MSGraphApplicationType*) universal;
+(MSGraphApplicationType*) desktop;

+(MSGraphApplicationType*) UnknownEnumValue;

+(MSGraphApplicationType*) applicationTypeWithEnumValue:(MSGraphApplicationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphApplicationTypeValue enumValue;

@end


@interface NSString (MSGraphApplicationType)

- (MSGraphApplicationType*) toMSGraphApplicationType;

@end
