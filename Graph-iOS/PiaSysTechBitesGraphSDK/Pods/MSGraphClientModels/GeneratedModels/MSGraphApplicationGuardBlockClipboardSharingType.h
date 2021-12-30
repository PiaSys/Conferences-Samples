// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphApplicationGuardBlockClipboardSharingTypeValue){

	MSGraphApplicationGuardBlockClipboardSharingTypeNotConfigured = 0,
	MSGraphApplicationGuardBlockClipboardSharingTypeBlockBoth = 1,
	MSGraphApplicationGuardBlockClipboardSharingTypeBlockHostToContainer = 2,
	MSGraphApplicationGuardBlockClipboardSharingTypeBlockContainerToHost = 3,
	MSGraphApplicationGuardBlockClipboardSharingTypeBlockNone = 4,
    MSGraphApplicationGuardBlockClipboardSharingTypeEndOfEnum
};

@interface MSGraphApplicationGuardBlockClipboardSharingType : NSObject

+(MSGraphApplicationGuardBlockClipboardSharingType*) notConfigured;
+(MSGraphApplicationGuardBlockClipboardSharingType*) blockBoth;
+(MSGraphApplicationGuardBlockClipboardSharingType*) blockHostToContainer;
+(MSGraphApplicationGuardBlockClipboardSharingType*) blockContainerToHost;
+(MSGraphApplicationGuardBlockClipboardSharingType*) blockNone;

+(MSGraphApplicationGuardBlockClipboardSharingType*) UnknownEnumValue;

+(MSGraphApplicationGuardBlockClipboardSharingType*) applicationGuardBlockClipboardSharingTypeWithEnumValue:(MSGraphApplicationGuardBlockClipboardSharingTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphApplicationGuardBlockClipboardSharingTypeValue enumValue;

@end


@interface NSString (MSGraphApplicationGuardBlockClipboardSharingType)

- (MSGraphApplicationGuardBlockClipboardSharingType*) toMSGraphApplicationGuardBlockClipboardSharingType;

@end
