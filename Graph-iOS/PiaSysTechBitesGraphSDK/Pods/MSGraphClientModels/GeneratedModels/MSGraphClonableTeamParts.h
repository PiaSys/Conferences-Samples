// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphClonableTeamPartsValue){

	MSGraphClonableTeamPartsApps = 1,
	MSGraphClonableTeamPartsTabs = 2,
	MSGraphClonableTeamPartsSettings = 4,
	MSGraphClonableTeamPartsChannels = 8,
	MSGraphClonableTeamPartsMembers = 16,
    MSGraphClonableTeamPartsEndOfEnum
};

@interface MSGraphClonableTeamParts : NSObject

+(MSGraphClonableTeamParts*) apps;
+(MSGraphClonableTeamParts*) tabs;
+(MSGraphClonableTeamParts*) settings;
+(MSGraphClonableTeamParts*) channels;
+(MSGraphClonableTeamParts*) members;

+(MSGraphClonableTeamParts*) UnknownEnumValue;

+(MSGraphClonableTeamParts*) clonableTeamPartsWithEnumValue:(MSGraphClonableTeamPartsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphClonableTeamPartsValue enumValue;

@end


@interface NSString (MSGraphClonableTeamParts)

- (MSGraphClonableTeamParts*) toMSGraphClonableTeamParts;

@end
