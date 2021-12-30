// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRecipientScopeTypeValue){

	MSGraphRecipientScopeTypeNone = 0,
	MSGraphRecipientScopeTypeInternal = 1,
	MSGraphRecipientScopeTypeExternal = 2,
	MSGraphRecipientScopeTypeExternalPartner = 4,
	MSGraphRecipientScopeTypeExternalNonPartner = 8,
    MSGraphRecipientScopeTypeEndOfEnum
};

@interface MSGraphRecipientScopeType : NSObject

+(MSGraphRecipientScopeType*) none;
+(MSGraphRecipientScopeType*) internal;
+(MSGraphRecipientScopeType*) external;
+(MSGraphRecipientScopeType*) externalPartner;
+(MSGraphRecipientScopeType*) externalNonPartner;

+(MSGraphRecipientScopeType*) UnknownEnumValue;

+(MSGraphRecipientScopeType*) recipientScopeTypeWithEnumValue:(MSGraphRecipientScopeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRecipientScopeTypeValue enumValue;

@end


@interface NSString (MSGraphRecipientScopeType)

- (MSGraphRecipientScopeType*) toMSGraphRecipientScopeType;

@end
