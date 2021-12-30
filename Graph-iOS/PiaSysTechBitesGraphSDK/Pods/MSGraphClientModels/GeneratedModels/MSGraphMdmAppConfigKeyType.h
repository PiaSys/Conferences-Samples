// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMdmAppConfigKeyTypeValue){

	MSGraphMdmAppConfigKeyTypeStringType = 0,
	MSGraphMdmAppConfigKeyTypeIntegerType = 1,
	MSGraphMdmAppConfigKeyTypeRealType = 2,
	MSGraphMdmAppConfigKeyTypeBooleanType = 3,
	MSGraphMdmAppConfigKeyTypeTokenType = 4,
    MSGraphMdmAppConfigKeyTypeEndOfEnum
};

@interface MSGraphMdmAppConfigKeyType : NSObject

+(MSGraphMdmAppConfigKeyType*) stringType;
+(MSGraphMdmAppConfigKeyType*) integerType;
+(MSGraphMdmAppConfigKeyType*) realType;
+(MSGraphMdmAppConfigKeyType*) booleanType;
+(MSGraphMdmAppConfigKeyType*) tokenType;

+(MSGraphMdmAppConfigKeyType*) UnknownEnumValue;

+(MSGraphMdmAppConfigKeyType*) mdmAppConfigKeyTypeWithEnumValue:(MSGraphMdmAppConfigKeyTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMdmAppConfigKeyTypeValue enumValue;

@end


@interface NSString (MSGraphMdmAppConfigKeyType)

- (MSGraphMdmAppConfigKeyType*) toMSGraphMdmAppConfigKeyType;

@end
