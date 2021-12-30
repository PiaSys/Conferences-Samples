// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphVppTokenSyncStatusValue){

	MSGraphVppTokenSyncStatusNone = 0,
	MSGraphVppTokenSyncStatusInProgress = 1,
	MSGraphVppTokenSyncStatusCompleted = 2,
	MSGraphVppTokenSyncStatusFailed = 3,
    MSGraphVppTokenSyncStatusEndOfEnum
};

@interface MSGraphVppTokenSyncStatus : NSObject

+(MSGraphVppTokenSyncStatus*) none;
+(MSGraphVppTokenSyncStatus*) inProgress;
+(MSGraphVppTokenSyncStatus*) completed;
+(MSGraphVppTokenSyncStatus*) failed;

+(MSGraphVppTokenSyncStatus*) UnknownEnumValue;

+(MSGraphVppTokenSyncStatus*) vppTokenSyncStatusWithEnumValue:(MSGraphVppTokenSyncStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphVppTokenSyncStatusValue enumValue;

@end


@interface NSString (MSGraphVppTokenSyncStatus)

- (MSGraphVppTokenSyncStatus*) toMSGraphVppTokenSyncStatus;

@end
