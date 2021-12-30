// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExchangeIdFormatValue){

	MSGraphExchangeIdFormatEntryId = 0,
	MSGraphExchangeIdFormatEwsId = 1,
	MSGraphExchangeIdFormatImmutableEntryId = 2,
	MSGraphExchangeIdFormatRestId = 3,
	MSGraphExchangeIdFormatRestImmutableEntryId = 4,
    MSGraphExchangeIdFormatEndOfEnum
};

@interface MSGraphExchangeIdFormat : NSObject

+(MSGraphExchangeIdFormat*) entryId;
+(MSGraphExchangeIdFormat*) ewsId;
+(MSGraphExchangeIdFormat*) immutableEntryId;
+(MSGraphExchangeIdFormat*) restId;
+(MSGraphExchangeIdFormat*) restImmutableEntryId;

+(MSGraphExchangeIdFormat*) UnknownEnumValue;

+(MSGraphExchangeIdFormat*) exchangeIdFormatWithEnumValue:(MSGraphExchangeIdFormatValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExchangeIdFormatValue enumValue;

@end


@interface NSString (MSGraphExchangeIdFormat)

- (MSGraphExchangeIdFormat*) toMSGraphExchangeIdFormat;

@end
