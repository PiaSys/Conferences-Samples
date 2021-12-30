// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnenoteSourceServiceValue){

	MSGraphOnenoteSourceServiceUnknown = 0,
	MSGraphOnenoteSourceServiceOneDrive = 1,
	MSGraphOnenoteSourceServiceOneDriveForBusiness = 2,
	MSGraphOnenoteSourceServiceOnPremOneDriveForBusiness = 3,
    MSGraphOnenoteSourceServiceEndOfEnum
};

@interface MSGraphOnenoteSourceService : NSObject

+(MSGraphOnenoteSourceService*) unknown;
+(MSGraphOnenoteSourceService*) oneDrive;
+(MSGraphOnenoteSourceService*) oneDriveForBusiness;
+(MSGraphOnenoteSourceService*) onPremOneDriveForBusiness;

+(MSGraphOnenoteSourceService*) UnknownEnumValue;

+(MSGraphOnenoteSourceService*) onenoteSourceServiceWithEnumValue:(MSGraphOnenoteSourceServiceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnenoteSourceServiceValue enumValue;

@end


@interface NSString (MSGraphOnenoteSourceService)

- (MSGraphOnenoteSourceService*) toMSGraphOnenoteSourceService;

@end
