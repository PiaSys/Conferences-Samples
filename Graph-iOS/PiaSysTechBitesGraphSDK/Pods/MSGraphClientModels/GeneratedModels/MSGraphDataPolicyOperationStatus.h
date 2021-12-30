// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDataPolicyOperationStatusValue){

	MSGraphDataPolicyOperationStatusNotStarted = 0,
	MSGraphDataPolicyOperationStatusRunning = 1,
	MSGraphDataPolicyOperationStatusComplete = 2,
	MSGraphDataPolicyOperationStatusFailed = 3,
	MSGraphDataPolicyOperationStatusUnknownFutureValue = 4,
    MSGraphDataPolicyOperationStatusEndOfEnum
};

@interface MSGraphDataPolicyOperationStatus : NSObject

+(MSGraphDataPolicyOperationStatus*) notStarted;
+(MSGraphDataPolicyOperationStatus*) running;
+(MSGraphDataPolicyOperationStatus*) complete;
+(MSGraphDataPolicyOperationStatus*) failed;
+(MSGraphDataPolicyOperationStatus*) unknownFutureValue;

+(MSGraphDataPolicyOperationStatus*) UnknownEnumValue;

+(MSGraphDataPolicyOperationStatus*) dataPolicyOperationStatusWithEnumValue:(MSGraphDataPolicyOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDataPolicyOperationStatusValue enumValue;

@end


@interface NSString (MSGraphDataPolicyOperationStatus)

- (MSGraphDataPolicyOperationStatus*) toMSGraphDataPolicyOperationStatus;

@end
