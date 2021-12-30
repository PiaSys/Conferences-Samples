// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppFlaggedReasonValue){

	MSGraphManagedAppFlaggedReasonNone = 0,
	MSGraphManagedAppFlaggedReasonRootedDevice = 1,
    MSGraphManagedAppFlaggedReasonEndOfEnum
};

@interface MSGraphManagedAppFlaggedReason : NSObject

+(MSGraphManagedAppFlaggedReason*) none;
+(MSGraphManagedAppFlaggedReason*) rootedDevice;

+(MSGraphManagedAppFlaggedReason*) UnknownEnumValue;

+(MSGraphManagedAppFlaggedReason*) managedAppFlaggedReasonWithEnumValue:(MSGraphManagedAppFlaggedReasonValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppFlaggedReasonValue enumValue;

@end


@interface NSString (MSGraphManagedAppFlaggedReason)

- (MSGraphManagedAppFlaggedReason*) toMSGraphManagedAppFlaggedReason;

@end
