// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWebsiteTypeValue){

	MSGraphWebsiteTypeOther = 0,
	MSGraphWebsiteTypeHome = 1,
	MSGraphWebsiteTypeWork = 2,
	MSGraphWebsiteTypeBlog = 3,
	MSGraphWebsiteTypeProfile = 4,
    MSGraphWebsiteTypeEndOfEnum
};

@interface MSGraphWebsiteType : NSObject

+(MSGraphWebsiteType*) other;
+(MSGraphWebsiteType*) home;
+(MSGraphWebsiteType*) work;
+(MSGraphWebsiteType*) blog;
+(MSGraphWebsiteType*) profile;

+(MSGraphWebsiteType*) UnknownEnumValue;

+(MSGraphWebsiteType*) websiteTypeWithEnumValue:(MSGraphWebsiteTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWebsiteTypeValue enumValue;

@end


@interface NSString (MSGraphWebsiteType)

- (MSGraphWebsiteType*) toMSGraphWebsiteType;

@end
