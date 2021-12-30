// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAttendeeTypeValue){

	MSGraphAttendeeTypeRequired = 0,
	MSGraphAttendeeTypeOptional = 1,
	MSGraphAttendeeTypeResource = 2,
    MSGraphAttendeeTypeEndOfEnum
};

@interface MSGraphAttendeeType : NSObject

+(MSGraphAttendeeType*) required;
+(MSGraphAttendeeType*) optional;
+(MSGraphAttendeeType*) resource;

+(MSGraphAttendeeType*) UnknownEnumValue;

+(MSGraphAttendeeType*) attendeeTypeWithEnumValue:(MSGraphAttendeeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAttendeeTypeValue enumValue;

@end


@interface NSString (MSGraphAttendeeType)

- (MSGraphAttendeeType*) toMSGraphAttendeeType;

@end
