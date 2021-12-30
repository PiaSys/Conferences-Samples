// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphVppTokenStateValue){

	MSGraphVppTokenStateUnknown = 0,
	MSGraphVppTokenStateValid = 1,
	MSGraphVppTokenStateExpired = 2,
	MSGraphVppTokenStateInvalid = 3,
	MSGraphVppTokenStateAssignedToExternalMDM = 4,
    MSGraphVppTokenStateEndOfEnum
};

@interface MSGraphVppTokenState : NSObject

+(MSGraphVppTokenState*) unknown;
+(MSGraphVppTokenState*) valid;
+(MSGraphVppTokenState*) expired;
+(MSGraphVppTokenState*) invalid;
+(MSGraphVppTokenState*) assignedToExternalMDM;

+(MSGraphVppTokenState*) UnknownEnumValue;

+(MSGraphVppTokenState*) vppTokenStateWithEnumValue:(MSGraphVppTokenStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphVppTokenStateValue enumValue;

@end


@interface NSString (MSGraphVppTokenState)

- (MSGraphVppTokenState*) toMSGraphVppTokenState;

@end
