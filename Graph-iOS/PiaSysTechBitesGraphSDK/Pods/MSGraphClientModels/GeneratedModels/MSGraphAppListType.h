// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAppListTypeValue){

	MSGraphAppListTypeNone = 0,
	MSGraphAppListTypeAppsInListCompliant = 1,
	MSGraphAppListTypeAppsNotInListCompliant = 2,
    MSGraphAppListTypeEndOfEnum
};

@interface MSGraphAppListType : NSObject

+(MSGraphAppListType*) none;
+(MSGraphAppListType*) appsInListCompliant;
+(MSGraphAppListType*) appsNotInListCompliant;

+(MSGraphAppListType*) UnknownEnumValue;

+(MSGraphAppListType*) appListTypeWithEnumValue:(MSGraphAppListTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAppListTypeValue enumValue;

@end


@interface NSString (MSGraphAppListType)

- (MSGraphAppListType*) toMSGraphAppListType;

@end
