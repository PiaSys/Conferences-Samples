// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppDataStorageLocationValue){

	MSGraphManagedAppDataStorageLocationOneDriveForBusiness = 1,
	MSGraphManagedAppDataStorageLocationSharePoint = 2,
	MSGraphManagedAppDataStorageLocationLocalStorage = 6,
    MSGraphManagedAppDataStorageLocationEndOfEnum
};

@interface MSGraphManagedAppDataStorageLocation : NSObject

+(MSGraphManagedAppDataStorageLocation*) oneDriveForBusiness;
+(MSGraphManagedAppDataStorageLocation*) sharePoint;
+(MSGraphManagedAppDataStorageLocation*) localStorage;

+(MSGraphManagedAppDataStorageLocation*) UnknownEnumValue;

+(MSGraphManagedAppDataStorageLocation*) managedAppDataStorageLocationWithEnumValue:(MSGraphManagedAppDataStorageLocationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppDataStorageLocationValue enumValue;

@end


@interface NSString (MSGraphManagedAppDataStorageLocation)

- (MSGraphManagedAppDataStorageLocation*) toMSGraphManagedAppDataStorageLocation;

@end
