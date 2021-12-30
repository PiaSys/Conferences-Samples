// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRejectReasonValue){

	MSGraphRejectReasonNone = 0,
	MSGraphRejectReasonBusy = 1,
	MSGraphRejectReasonForbidden = 2,
	MSGraphRejectReasonUnknownFutureValue = 3,
    MSGraphRejectReasonEndOfEnum
};

@interface MSGraphRejectReason : NSObject

+(MSGraphRejectReason*) none;
+(MSGraphRejectReason*) busy;
+(MSGraphRejectReason*) forbidden;
+(MSGraphRejectReason*) unknownFutureValue;

+(MSGraphRejectReason*) UnknownEnumValue;

+(MSGraphRejectReason*) rejectReasonWithEnumValue:(MSGraphRejectReasonValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRejectReasonValue enumValue;

@end


@interface NSString (MSGraphRejectReason)

- (MSGraphRejectReason*) toMSGraphRejectReason;

@end
