// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamsAsyncOperationStatusValue){

	MSGraphTeamsAsyncOperationStatusInvalid = 0,
	MSGraphTeamsAsyncOperationStatusNotStarted = 1,
	MSGraphTeamsAsyncOperationStatusInProgress = 2,
	MSGraphTeamsAsyncOperationStatusSucceeded = 3,
	MSGraphTeamsAsyncOperationStatusFailed = 4,
	MSGraphTeamsAsyncOperationStatusUnknownFutureValue = 5,
    MSGraphTeamsAsyncOperationStatusEndOfEnum
};

@interface MSGraphTeamsAsyncOperationStatus : NSObject

+(MSGraphTeamsAsyncOperationStatus*) invalid;
+(MSGraphTeamsAsyncOperationStatus*) notStarted;
+(MSGraphTeamsAsyncOperationStatus*) inProgress;
+(MSGraphTeamsAsyncOperationStatus*) succeeded;
+(MSGraphTeamsAsyncOperationStatus*) failed;
+(MSGraphTeamsAsyncOperationStatus*) unknownFutureValue;

+(MSGraphTeamsAsyncOperationStatus*) UnknownEnumValue;

+(MSGraphTeamsAsyncOperationStatus*) teamsAsyncOperationStatusWithEnumValue:(MSGraphTeamsAsyncOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamsAsyncOperationStatusValue enumValue;

@end


@interface NSString (MSGraphTeamsAsyncOperationStatus)

- (MSGraphTeamsAsyncOperationStatus*) toMSGraphTeamsAsyncOperationStatus;

@end
