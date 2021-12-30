// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppAvailabilityValue){

	MSGraphManagedAppAvailabilityGlobal = 0,
	MSGraphManagedAppAvailabilityLineOfBusiness = 1,
    MSGraphManagedAppAvailabilityEndOfEnum
};

@interface MSGraphManagedAppAvailability : NSObject

+(MSGraphManagedAppAvailability*) global;
+(MSGraphManagedAppAvailability*) lineOfBusiness;

+(MSGraphManagedAppAvailability*) UnknownEnumValue;

+(MSGraphManagedAppAvailability*) managedAppAvailabilityWithEnumValue:(MSGraphManagedAppAvailabilityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppAvailabilityValue enumValue;

@end


@interface NSString (MSGraphManagedAppAvailability)

- (MSGraphManagedAppAvailability*) toMSGraphManagedAppAvailability;

@end
