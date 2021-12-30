// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDefenderMonitorFileActivityValue){

	MSGraphDefenderMonitorFileActivityUserDefined = 0,
	MSGraphDefenderMonitorFileActivityDisable = 1,
	MSGraphDefenderMonitorFileActivityMonitorAllFiles = 2,
	MSGraphDefenderMonitorFileActivityMonitorIncomingFilesOnly = 3,
	MSGraphDefenderMonitorFileActivityMonitorOutgoingFilesOnly = 4,
    MSGraphDefenderMonitorFileActivityEndOfEnum
};

@interface MSGraphDefenderMonitorFileActivity : NSObject

+(MSGraphDefenderMonitorFileActivity*) userDefined;
+(MSGraphDefenderMonitorFileActivity*) disable;
+(MSGraphDefenderMonitorFileActivity*) monitorAllFiles;
+(MSGraphDefenderMonitorFileActivity*) monitorIncomingFilesOnly;
+(MSGraphDefenderMonitorFileActivity*) monitorOutgoingFilesOnly;

+(MSGraphDefenderMonitorFileActivity*) UnknownEnumValue;

+(MSGraphDefenderMonitorFileActivity*) defenderMonitorFileActivityWithEnumValue:(MSGraphDefenderMonitorFileActivityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDefenderMonitorFileActivityValue enumValue;

@end


@interface NSString (MSGraphDefenderMonitorFileActivity)

- (MSGraphDefenderMonitorFileActivity*) toMSGraphDefenderMonitorFileActivity;

@end
