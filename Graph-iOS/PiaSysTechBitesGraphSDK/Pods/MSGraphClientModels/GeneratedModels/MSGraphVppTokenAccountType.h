// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphVppTokenAccountTypeValue){

	MSGraphVppTokenAccountTypeBusiness = 0,
	MSGraphVppTokenAccountTypeEducation = 1,
    MSGraphVppTokenAccountTypeEndOfEnum
};

@interface MSGraphVppTokenAccountType : NSObject

+(MSGraphVppTokenAccountType*) business;
+(MSGraphVppTokenAccountType*) education;

+(MSGraphVppTokenAccountType*) UnknownEnumValue;

+(MSGraphVppTokenAccountType*) vppTokenAccountTypeWithEnumValue:(MSGraphVppTokenAccountTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphVppTokenAccountTypeValue enumValue;

@end


@interface NSString (MSGraphVppTokenAccountType)

- (MSGraphVppTokenAccountType*) toMSGraphVppTokenAccountType;

@end
