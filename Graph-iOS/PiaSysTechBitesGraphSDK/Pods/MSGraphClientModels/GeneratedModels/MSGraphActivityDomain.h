// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphActivityDomainValue){

	MSGraphActivityDomainUnknown = 0,
	MSGraphActivityDomainWork = 1,
	MSGraphActivityDomainPersonal = 2,
	MSGraphActivityDomainUnrestricted = 3,
    MSGraphActivityDomainEndOfEnum
};

@interface MSGraphActivityDomain : NSObject

+(MSGraphActivityDomain*) unknown;
+(MSGraphActivityDomain*) work;
+(MSGraphActivityDomain*) personal;
+(MSGraphActivityDomain*) unrestricted;

+(MSGraphActivityDomain*) UnknownEnumValue;

+(MSGraphActivityDomain*) activityDomainWithEnumValue:(MSGraphActivityDomainValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphActivityDomainValue enumValue;

@end


@interface NSString (MSGraphActivityDomain)

- (MSGraphActivityDomain*) toMSGraphActivityDomain;

@end
