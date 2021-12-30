// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRegistryOperationValue){

	MSGraphRegistryOperationUnknown = 0,
	MSGraphRegistryOperationCreate = 1,
	MSGraphRegistryOperationModify = 2,
	MSGraphRegistryOperationDelete = 3,
	MSGraphRegistryOperationUnknownFutureValue = 127,
    MSGraphRegistryOperationEndOfEnum
};

@interface MSGraphRegistryOperation : NSObject

+(MSGraphRegistryOperation*) unknown;
+(MSGraphRegistryOperation*) create;
+(MSGraphRegistryOperation*) modify;
+(MSGraphRegistryOperation*) delete;
+(MSGraphRegistryOperation*) unknownFutureValue;

+(MSGraphRegistryOperation*) UnknownEnumValue;

+(MSGraphRegistryOperation*) registryOperationWithEnumValue:(MSGraphRegistryOperationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRegistryOperationValue enumValue;

@end


@interface NSString (MSGraphRegistryOperation)

- (MSGraphRegistryOperation*) toMSGraphRegistryOperation;

@end
