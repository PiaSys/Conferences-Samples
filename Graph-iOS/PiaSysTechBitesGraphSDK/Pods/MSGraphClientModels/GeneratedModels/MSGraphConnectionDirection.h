// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConnectionDirectionValue){

	MSGraphConnectionDirectionUnknown = 0,
	MSGraphConnectionDirectionInbound = 1,
	MSGraphConnectionDirectionOutbound = 2,
	MSGraphConnectionDirectionUnknownFutureValue = 127,
    MSGraphConnectionDirectionEndOfEnum
};

@interface MSGraphConnectionDirection : NSObject

+(MSGraphConnectionDirection*) unknown;
+(MSGraphConnectionDirection*) inbound;
+(MSGraphConnectionDirection*) outbound;
+(MSGraphConnectionDirection*) unknownFutureValue;

+(MSGraphConnectionDirection*) UnknownEnumValue;

+(MSGraphConnectionDirection*) connectionDirectionWithEnumValue:(MSGraphConnectionDirectionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConnectionDirectionValue enumValue;

@end


@interface NSString (MSGraphConnectionDirection)

- (MSGraphConnectionDirection*) toMSGraphConnectionDirection;

@end
