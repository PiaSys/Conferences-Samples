// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConditionalAccessStatusValue){

	MSGraphConditionalAccessStatusSuccess = 0,
	MSGraphConditionalAccessStatusFailure = 1,
	MSGraphConditionalAccessStatusNotApplied = 2,
	MSGraphConditionalAccessStatusUnknownFutureValue = 3,
    MSGraphConditionalAccessStatusEndOfEnum
};

@interface MSGraphConditionalAccessStatus : NSObject

+(MSGraphConditionalAccessStatus*) success;
+(MSGraphConditionalAccessStatus*) failure;
+(MSGraphConditionalAccessStatus*) notApplied;
+(MSGraphConditionalAccessStatus*) unknownFutureValue;

+(MSGraphConditionalAccessStatus*) UnknownEnumValue;

+(MSGraphConditionalAccessStatus*) conditionalAccessStatusWithEnumValue:(MSGraphConditionalAccessStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConditionalAccessStatusValue enumValue;

@end


@interface NSString (MSGraphConditionalAccessStatus)

- (MSGraphConditionalAccessStatus*) toMSGraphConditionalAccessStatus;

@end
