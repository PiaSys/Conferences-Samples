// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSafeSearchFilterTypeValue){

	MSGraphSafeSearchFilterTypeUserDefined = 0,
	MSGraphSafeSearchFilterTypeStrict = 1,
	MSGraphSafeSearchFilterTypeModerate = 2,
    MSGraphSafeSearchFilterTypeEndOfEnum
};

@interface MSGraphSafeSearchFilterType : NSObject

+(MSGraphSafeSearchFilterType*) userDefined;
+(MSGraphSafeSearchFilterType*) strict;
+(MSGraphSafeSearchFilterType*) moderate;

+(MSGraphSafeSearchFilterType*) UnknownEnumValue;

+(MSGraphSafeSearchFilterType*) safeSearchFilterTypeWithEnumValue:(MSGraphSafeSearchFilterTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSafeSearchFilterTypeValue enumValue;

@end


@interface NSString (MSGraphSafeSearchFilterType)

- (MSGraphSafeSearchFilterType*) toMSGraphSafeSearchFilterType;

@end
