// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphStatusValue){

	MSGraphStatusActive = 0,
	MSGraphStatusUpdated = 1,
	MSGraphStatusDeleted = 2,
	MSGraphStatusIgnored = 3,
	MSGraphStatusUnknownFutureValue = 4,
    MSGraphStatusEndOfEnum
};

@interface MSGraphStatus : NSObject

+(MSGraphStatus*) active;
+(MSGraphStatus*) updated;
+(MSGraphStatus*) deleted;
+(MSGraphStatus*) ignored;
+(MSGraphStatus*) unknownFutureValue;

+(MSGraphStatus*) UnknownEnumValue;

+(MSGraphStatus*) statusWithEnumValue:(MSGraphStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphStatusValue enumValue;

@end


@interface NSString (MSGraphStatus)

- (MSGraphStatus*) toMSGraphStatus;

@end
