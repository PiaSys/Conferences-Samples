// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamsAppDistributionMethodValue){

	MSGraphTeamsAppDistributionMethodStore = 0,
	MSGraphTeamsAppDistributionMethodOrganization = 1,
	MSGraphTeamsAppDistributionMethodSideloaded = 2,
	MSGraphTeamsAppDistributionMethodUnknownFutureValue = 3,
    MSGraphTeamsAppDistributionMethodEndOfEnum
};

@interface MSGraphTeamsAppDistributionMethod : NSObject

+(MSGraphTeamsAppDistributionMethod*) store;
+(MSGraphTeamsAppDistributionMethod*) organization;
+(MSGraphTeamsAppDistributionMethod*) sideloaded;
+(MSGraphTeamsAppDistributionMethod*) unknownFutureValue;

+(MSGraphTeamsAppDistributionMethod*) UnknownEnumValue;

+(MSGraphTeamsAppDistributionMethod*) teamsAppDistributionMethodWithEnumValue:(MSGraphTeamsAppDistributionMethodValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamsAppDistributionMethodValue enumValue;

@end


@interface NSString (MSGraphTeamsAppDistributionMethod)

- (MSGraphTeamsAppDistributionMethod*) toMSGraphTeamsAppDistributionMethod;

@end
