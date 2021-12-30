// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamVisibilityTypeValue){

	MSGraphTeamVisibilityTypePrivate = 0,
	MSGraphTeamVisibilityTypePublic = 1,
	MSGraphTeamVisibilityTypeHiddenMembership = 2,
	MSGraphTeamVisibilityTypeUnknownFutureValue = 3,
    MSGraphTeamVisibilityTypeEndOfEnum
};

@interface MSGraphTeamVisibilityType : NSObject

+(MSGraphTeamVisibilityType*) private;
+(MSGraphTeamVisibilityType*) public;
+(MSGraphTeamVisibilityType*) hiddenMembership;
+(MSGraphTeamVisibilityType*) unknownFutureValue;

+(MSGraphTeamVisibilityType*) UnknownEnumValue;

+(MSGraphTeamVisibilityType*) teamVisibilityTypeWithEnumValue:(MSGraphTeamVisibilityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamVisibilityTypeValue enumValue;

@end


@interface NSString (MSGraphTeamVisibilityType)

- (MSGraphTeamVisibilityType*) toMSGraphTeamVisibilityType;

@end
