// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMediaStateValue){

	MSGraphMediaStateActive = 0,
	MSGraphMediaStateInactive = 1,
	MSGraphMediaStateUnknownFutureValue = 2,
    MSGraphMediaStateEndOfEnum
};

@interface MSGraphMediaState : NSObject

+(MSGraphMediaState*) active;
+(MSGraphMediaState*) inactive;
+(MSGraphMediaState*) unknownFutureValue;

+(MSGraphMediaState*) UnknownEnumValue;

+(MSGraphMediaState*) mediaStateWithEnumValue:(MSGraphMediaStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMediaStateValue enumValue;

@end


@interface NSString (MSGraphMediaState)

- (MSGraphMediaState*) toMSGraphMediaState;

@end
