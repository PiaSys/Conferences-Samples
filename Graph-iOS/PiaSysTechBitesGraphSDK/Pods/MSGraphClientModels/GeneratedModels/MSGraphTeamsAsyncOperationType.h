// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamsAsyncOperationTypeValue){

	MSGraphTeamsAsyncOperationTypeInvalid = 0,
	MSGraphTeamsAsyncOperationTypeCloneTeam = 1,
	MSGraphTeamsAsyncOperationTypeArchiveTeam = 2,
	MSGraphTeamsAsyncOperationTypeUnarchiveTeam = 3,
	MSGraphTeamsAsyncOperationTypeCreateTeam = 4,
	MSGraphTeamsAsyncOperationTypeUnknownFutureValue = 5,
    MSGraphTeamsAsyncOperationTypeEndOfEnum
};

@interface MSGraphTeamsAsyncOperationType : NSObject

+(MSGraphTeamsAsyncOperationType*) invalid;
+(MSGraphTeamsAsyncOperationType*) cloneTeam;
+(MSGraphTeamsAsyncOperationType*) archiveTeam;
+(MSGraphTeamsAsyncOperationType*) unarchiveTeam;
+(MSGraphTeamsAsyncOperationType*) createTeam;
+(MSGraphTeamsAsyncOperationType*) unknownFutureValue;

+(MSGraphTeamsAsyncOperationType*) UnknownEnumValue;

+(MSGraphTeamsAsyncOperationType*) teamsAsyncOperationTypeWithEnumValue:(MSGraphTeamsAsyncOperationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamsAsyncOperationTypeValue enumValue;

@end


@interface NSString (MSGraphTeamsAsyncOperationType)

- (MSGraphTeamsAsyncOperationType*) toMSGraphTeamsAsyncOperationType;

@end
