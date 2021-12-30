// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOperationStatusValue){

	MSGraphOperationStatusNotStarted = 0,
	MSGraphOperationStatusRunning = 1,
	MSGraphOperationStatusCompleted = 2,
	MSGraphOperationStatusFailed = 3,
    MSGraphOperationStatusEndOfEnum
};

@interface MSGraphOperationStatus : NSObject

+(MSGraphOperationStatus*) notStarted;
+(MSGraphOperationStatus*) running;
+(MSGraphOperationStatus*) completed;
+(MSGraphOperationStatus*) failed;

+(MSGraphOperationStatus*) UnknownEnumValue;

+(MSGraphOperationStatus*) operationStatusWithEnumValue:(MSGraphOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOperationStatusValue enumValue;

@end


@interface NSString (MSGraphOperationStatus)

- (MSGraphOperationStatus*) toMSGraphOperationStatus;

@end
