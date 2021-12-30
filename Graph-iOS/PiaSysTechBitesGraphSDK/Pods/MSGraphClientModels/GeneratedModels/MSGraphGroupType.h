// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphGroupTypeValue){

	MSGraphGroupTypeUnifiedGroups = 0,
	MSGraphGroupTypeAzureAD = 1,
	MSGraphGroupTypeUnknownFutureValue = 2,
    MSGraphGroupTypeEndOfEnum
};

@interface MSGraphGroupType : NSObject

+(MSGraphGroupType*) unifiedGroups;
+(MSGraphGroupType*) azureAD;
+(MSGraphGroupType*) unknownFutureValue;

+(MSGraphGroupType*) UnknownEnumValue;

+(MSGraphGroupType*) groupTypeWithEnumValue:(MSGraphGroupTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphGroupTypeValue enumValue;

@end


@interface NSString (MSGraphGroupType)

- (MSGraphGroupType*) toMSGraphGroupType;

@end
