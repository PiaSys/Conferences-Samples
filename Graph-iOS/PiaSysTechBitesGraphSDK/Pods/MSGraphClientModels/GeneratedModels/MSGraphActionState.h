// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphActionStateValue){

	MSGraphActionStateNone = 0,
	MSGraphActionStatePending = 1,
	MSGraphActionStateCanceled = 2,
	MSGraphActionStateActive = 3,
	MSGraphActionStateDone = 4,
	MSGraphActionStateFailed = 5,
	MSGraphActionStateNotSupported = 6,
    MSGraphActionStateEndOfEnum
};

@interface MSGraphActionState : NSObject

+(MSGraphActionState*) none;
+(MSGraphActionState*) pending;
+(MSGraphActionState*) canceled;
+(MSGraphActionState*) active;
+(MSGraphActionState*) done;
+(MSGraphActionState*) failed;
+(MSGraphActionState*) notSupported;

+(MSGraphActionState*) UnknownEnumValue;

+(MSGraphActionState*) actionStateWithEnumValue:(MSGraphActionStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphActionStateValue enumValue;

@end


@interface NSString (MSGraphActionState)

- (MSGraphActionState*) toMSGraphActionState;

@end
