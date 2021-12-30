// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceEnrollmentTypeValue){

	MSGraphDeviceEnrollmentTypeUnknown = 0,
	MSGraphDeviceEnrollmentTypeUserEnrollment = 1,
	MSGraphDeviceEnrollmentTypeDeviceEnrollmentManager = 2,
	MSGraphDeviceEnrollmentTypeAppleBulkWithUser = 3,
	MSGraphDeviceEnrollmentTypeAppleBulkWithoutUser = 4,
	MSGraphDeviceEnrollmentTypeWindowsAzureADJoin = 5,
	MSGraphDeviceEnrollmentTypeWindowsBulkUserless = 6,
	MSGraphDeviceEnrollmentTypeWindowsAutoEnrollment = 7,
	MSGraphDeviceEnrollmentTypeWindowsBulkAzureDomainJoin = 8,
	MSGraphDeviceEnrollmentTypeWindowsCoManagement = 9,
    MSGraphDeviceEnrollmentTypeEndOfEnum
};

@interface MSGraphDeviceEnrollmentType : NSObject

+(MSGraphDeviceEnrollmentType*) unknown;
+(MSGraphDeviceEnrollmentType*) userEnrollment;
+(MSGraphDeviceEnrollmentType*) deviceEnrollmentManager;
+(MSGraphDeviceEnrollmentType*) appleBulkWithUser;
+(MSGraphDeviceEnrollmentType*) appleBulkWithoutUser;
+(MSGraphDeviceEnrollmentType*) windowsAzureADJoin;
+(MSGraphDeviceEnrollmentType*) windowsBulkUserless;
+(MSGraphDeviceEnrollmentType*) windowsAutoEnrollment;
+(MSGraphDeviceEnrollmentType*) windowsBulkAzureDomainJoin;
+(MSGraphDeviceEnrollmentType*) windowsCoManagement;

+(MSGraphDeviceEnrollmentType*) UnknownEnumValue;

+(MSGraphDeviceEnrollmentType*) deviceEnrollmentTypeWithEnumValue:(MSGraphDeviceEnrollmentTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceEnrollmentTypeValue enumValue;

@end


@interface NSString (MSGraphDeviceEnrollmentType)

- (MSGraphDeviceEnrollmentType*) toMSGraphDeviceEnrollmentType;

@end
