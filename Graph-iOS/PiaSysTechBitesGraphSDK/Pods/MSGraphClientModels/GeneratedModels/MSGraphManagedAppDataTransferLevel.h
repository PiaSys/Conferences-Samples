// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppDataTransferLevelValue){

	MSGraphManagedAppDataTransferLevelAllApps = 0,
	MSGraphManagedAppDataTransferLevelManagedApps = 1,
	MSGraphManagedAppDataTransferLevelNone = 2,
    MSGraphManagedAppDataTransferLevelEndOfEnum
};

@interface MSGraphManagedAppDataTransferLevel : NSObject

+(MSGraphManagedAppDataTransferLevel*) allApps;
+(MSGraphManagedAppDataTransferLevel*) managedApps;
+(MSGraphManagedAppDataTransferLevel*) none;

+(MSGraphManagedAppDataTransferLevel*) UnknownEnumValue;

+(MSGraphManagedAppDataTransferLevel*) managedAppDataTransferLevelWithEnumValue:(MSGraphManagedAppDataTransferLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppDataTransferLevelValue enumValue;

@end


@interface NSString (MSGraphManagedAppDataTransferLevel)

- (MSGraphManagedAppDataTransferLevel*) toMSGraphManagedAppDataTransferLevel;

@end
