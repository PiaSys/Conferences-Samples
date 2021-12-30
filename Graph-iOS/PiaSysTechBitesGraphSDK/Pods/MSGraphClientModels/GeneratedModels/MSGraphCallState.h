// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallStateValue){

	MSGraphCallStateIncoming = 0,
	MSGraphCallStateEstablishing = 1,
	MSGraphCallStateEstablished = 3,
	MSGraphCallStateHold = 4,
	MSGraphCallStateTransferring = 5,
	MSGraphCallStateTransferAccepted = 6,
	MSGraphCallStateRedirecting = 7,
	MSGraphCallStateTerminating = 8,
	MSGraphCallStateTerminated = 9,
	MSGraphCallStateUnknownFutureValue = 10,
    MSGraphCallStateEndOfEnum
};

@interface MSGraphCallState : NSObject

+(MSGraphCallState*) incoming;
+(MSGraphCallState*) establishing;
+(MSGraphCallState*) established;
+(MSGraphCallState*) hold;
+(MSGraphCallState*) transferring;
+(MSGraphCallState*) transferAccepted;
+(MSGraphCallState*) redirecting;
+(MSGraphCallState*) terminating;
+(MSGraphCallState*) terminated;
+(MSGraphCallState*) unknownFutureValue;

+(MSGraphCallState*) UnknownEnumValue;

+(MSGraphCallState*) callStateWithEnumValue:(MSGraphCallStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallStateValue enumValue;

@end


@interface NSString (MSGraphCallState)

- (MSGraphCallState*) toMSGraphCallState;

@end
