// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalAudienceScopeValue){

	MSGraphExternalAudienceScopeNone = 0,
	MSGraphExternalAudienceScopeContactsOnly = 1,
	MSGraphExternalAudienceScopeAll = 2,
    MSGraphExternalAudienceScopeEndOfEnum
};

@interface MSGraphExternalAudienceScope : NSObject

+(MSGraphExternalAudienceScope*) none;
+(MSGraphExternalAudienceScope*) contactsOnly;
+(MSGraphExternalAudienceScope*) all;

+(MSGraphExternalAudienceScope*) UnknownEnumValue;

+(MSGraphExternalAudienceScope*) externalAudienceScopeWithEnumValue:(MSGraphExternalAudienceScopeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalAudienceScopeValue enumValue;

@end


@interface NSString (MSGraphExternalAudienceScope)

- (MSGraphExternalAudienceScope*) toMSGraphExternalAudienceScope;

@end
