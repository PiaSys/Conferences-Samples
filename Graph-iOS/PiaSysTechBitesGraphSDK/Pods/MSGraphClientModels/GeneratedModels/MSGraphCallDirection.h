// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallDirectionValue){

	MSGraphCallDirectionIncoming = 0,
	MSGraphCallDirectionOutgoing = 1,
    MSGraphCallDirectionEndOfEnum
};

@interface MSGraphCallDirection : NSObject

+(MSGraphCallDirection*) incoming;
+(MSGraphCallDirection*) outgoing;

+(MSGraphCallDirection*) UnknownEnumValue;

+(MSGraphCallDirection*) callDirectionWithEnumValue:(MSGraphCallDirectionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallDirectionValue enumValue;

@end


@interface NSString (MSGraphCallDirection)

- (MSGraphCallDirection*) toMSGraphCallDirection;

@end
