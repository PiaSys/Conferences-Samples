// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppClipboardSharingLevelValue){

	MSGraphManagedAppClipboardSharingLevelAllApps = 0,
	MSGraphManagedAppClipboardSharingLevelManagedAppsWithPasteIn = 1,
	MSGraphManagedAppClipboardSharingLevelManagedApps = 2,
	MSGraphManagedAppClipboardSharingLevelBlocked = 3,
    MSGraphManagedAppClipboardSharingLevelEndOfEnum
};

@interface MSGraphManagedAppClipboardSharingLevel : NSObject

+(MSGraphManagedAppClipboardSharingLevel*) allApps;
+(MSGraphManagedAppClipboardSharingLevel*) managedAppsWithPasteIn;
+(MSGraphManagedAppClipboardSharingLevel*) managedApps;
+(MSGraphManagedAppClipboardSharingLevel*) blocked;

+(MSGraphManagedAppClipboardSharingLevel*) UnknownEnumValue;

+(MSGraphManagedAppClipboardSharingLevel*) managedAppClipboardSharingLevelWithEnumValue:(MSGraphManagedAppClipboardSharingLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppClipboardSharingLevelValue enumValue;

@end


@interface NSString (MSGraphManagedAppClipboardSharingLevel)

- (MSGraphManagedAppClipboardSharingLevel*) toMSGraphManagedAppClipboardSharingLevel;

@end
