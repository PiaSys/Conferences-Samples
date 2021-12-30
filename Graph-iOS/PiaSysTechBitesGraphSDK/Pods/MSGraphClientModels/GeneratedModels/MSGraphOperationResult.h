// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOperationResultValue){

	MSGraphOperationResultSuccess = 0,
	MSGraphOperationResultFailure = 1,
	MSGraphOperationResultTimeout = 2,
	MSGraphOperationResultUnknownFutureValue = 3,
    MSGraphOperationResultEndOfEnum
};

@interface MSGraphOperationResult : NSObject

+(MSGraphOperationResult*) success;
+(MSGraphOperationResult*) failure;
+(MSGraphOperationResult*) timeout;
+(MSGraphOperationResult*) unknownFutureValue;

+(MSGraphOperationResult*) UnknownEnumValue;

+(MSGraphOperationResult*) operationResultWithEnumValue:(MSGraphOperationResultValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOperationResultValue enumValue;

@end


@interface NSString (MSGraphOperationResult)

- (MSGraphOperationResult*) toMSGraphOperationResult;

@end
