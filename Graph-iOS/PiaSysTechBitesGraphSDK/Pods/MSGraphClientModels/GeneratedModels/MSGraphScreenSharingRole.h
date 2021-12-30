// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphScreenSharingRoleValue){

	MSGraphScreenSharingRoleViewer = 0,
	MSGraphScreenSharingRoleSharer = 1,
    MSGraphScreenSharingRoleEndOfEnum
};

@interface MSGraphScreenSharingRole : NSObject

+(MSGraphScreenSharingRole*) viewer;
+(MSGraphScreenSharingRole*) sharer;

+(MSGraphScreenSharingRole*) UnknownEnumValue;

+(MSGraphScreenSharingRole*) screenSharingRoleWithEnumValue:(MSGraphScreenSharingRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphScreenSharingRoleValue enumValue;

@end


@interface NSString (MSGraphScreenSharingRole)

- (MSGraphScreenSharingRole*) toMSGraphScreenSharingRole;

@end
