// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEventTypeValue){

	MSGraphEventTypeSingleInstance = 0,
	MSGraphEventTypeOccurrence = 1,
	MSGraphEventTypeException = 2,
	MSGraphEventTypeSeriesMaster = 3,
    MSGraphEventTypeEndOfEnum
};

@interface MSGraphEventType : NSObject

+(MSGraphEventType*) singleInstance;
+(MSGraphEventType*) occurrence;
+(MSGraphEventType*) exception;
+(MSGraphEventType*) seriesMaster;

+(MSGraphEventType*) UnknownEnumValue;

+(MSGraphEventType*) eventTypeWithEnumValue:(MSGraphEventTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEventTypeValue enumValue;

@end


@interface NSString (MSGraphEventType)

- (MSGraphEventType*) toMSGraphEventType;

@end
