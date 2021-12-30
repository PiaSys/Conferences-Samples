// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMediaDirectionValue){

	MSGraphMediaDirectionInactive = 0,
	MSGraphMediaDirectionSendOnly = 1,
	MSGraphMediaDirectionReceiveOnly = 2,
	MSGraphMediaDirectionSendReceive = 3,
    MSGraphMediaDirectionEndOfEnum
};

@interface MSGraphMediaDirection : NSObject

+(MSGraphMediaDirection*) inactive;
+(MSGraphMediaDirection*) sendOnly;
+(MSGraphMediaDirection*) receiveOnly;
+(MSGraphMediaDirection*) sendReceive;

+(MSGraphMediaDirection*) UnknownEnumValue;

+(MSGraphMediaDirection*) mediaDirectionWithEnumValue:(MSGraphMediaDirectionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMediaDirectionValue enumValue;

@end


@interface NSString (MSGraphMediaDirection)

- (MSGraphMediaDirection*) toMSGraphMediaDirection;

@end
