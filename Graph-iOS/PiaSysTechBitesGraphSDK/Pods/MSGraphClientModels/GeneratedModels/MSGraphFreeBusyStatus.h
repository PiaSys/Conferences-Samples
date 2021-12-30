// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFreeBusyStatusValue){

	MSGraphFreeBusyStatusUnknown = -1,
	MSGraphFreeBusyStatusFree = 0,
	MSGraphFreeBusyStatusTentative = 1,
	MSGraphFreeBusyStatusBusy = 2,
	MSGraphFreeBusyStatusOof = 3,
	MSGraphFreeBusyStatusWorkingElsewhere = 4,
    MSGraphFreeBusyStatusEndOfEnum
};

@interface MSGraphFreeBusyStatus : NSObject

+(MSGraphFreeBusyStatus*) unknown;
+(MSGraphFreeBusyStatus*) free;
+(MSGraphFreeBusyStatus*) tentative;
+(MSGraphFreeBusyStatus*) busy;
+(MSGraphFreeBusyStatus*) oof;
+(MSGraphFreeBusyStatus*) workingElsewhere;

+(MSGraphFreeBusyStatus*) UnknownEnumValue;

+(MSGraphFreeBusyStatus*) freeBusyStatusWithEnumValue:(MSGraphFreeBusyStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFreeBusyStatusValue enumValue;

@end


@interface NSString (MSGraphFreeBusyStatus)

- (MSGraphFreeBusyStatus*) toMSGraphFreeBusyStatus;

@end
