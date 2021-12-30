// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConnectionStatusValue){

	MSGraphConnectionStatusUnknown = 0,
	MSGraphConnectionStatusAttempted = 1,
	MSGraphConnectionStatusSucceeded = 2,
	MSGraphConnectionStatusBlocked = 3,
	MSGraphConnectionStatusFailed = 4,
	MSGraphConnectionStatusUnknownFutureValue = 127,
    MSGraphConnectionStatusEndOfEnum
};

@interface MSGraphConnectionStatus : NSObject

+(MSGraphConnectionStatus*) unknown;
+(MSGraphConnectionStatus*) attempted;
+(MSGraphConnectionStatus*) succeeded;
+(MSGraphConnectionStatus*) blocked;
+(MSGraphConnectionStatus*) failed;
+(MSGraphConnectionStatus*) unknownFutureValue;

+(MSGraphConnectionStatus*) UnknownEnumValue;

+(MSGraphConnectionStatus*) connectionStatusWithEnumValue:(MSGraphConnectionStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConnectionStatusValue enumValue;

@end


@interface NSString (MSGraphConnectionStatus)

- (MSGraphConnectionStatus*) toMSGraphConnectionStatus;

@end
