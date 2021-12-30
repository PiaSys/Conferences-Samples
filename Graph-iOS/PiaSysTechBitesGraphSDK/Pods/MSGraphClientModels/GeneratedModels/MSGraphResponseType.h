// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphResponseTypeValue){

	MSGraphResponseTypeNone = 0,
	MSGraphResponseTypeOrganizer = 1,
	MSGraphResponseTypeTentativelyAccepted = 2,
	MSGraphResponseTypeAccepted = 3,
	MSGraphResponseTypeDeclined = 4,
	MSGraphResponseTypeNotResponded = 5,
    MSGraphResponseTypeEndOfEnum
};

@interface MSGraphResponseType : NSObject

+(MSGraphResponseType*) none;
+(MSGraphResponseType*) organizer;
+(MSGraphResponseType*) tentativelyAccepted;
+(MSGraphResponseType*) accepted;
+(MSGraphResponseType*) declined;
+(MSGraphResponseType*) notResponded;

+(MSGraphResponseType*) UnknownEnumValue;

+(MSGraphResponseType*) responseTypeWithEnumValue:(MSGraphResponseTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphResponseTypeValue enumValue;

@end


@interface NSString (MSGraphResponseType)

- (MSGraphResponseType*) toMSGraphResponseType;

@end
