// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMdmAuthorityValue){

	MSGraphMdmAuthorityUnknown = 0,
	MSGraphMdmAuthorityIntune = 1,
	MSGraphMdmAuthoritySccm = 2,
	MSGraphMdmAuthorityOffice365 = 3,
    MSGraphMdmAuthorityEndOfEnum
};

@interface MSGraphMdmAuthority : NSObject

+(MSGraphMdmAuthority*) unknown;
+(MSGraphMdmAuthority*) intune;
+(MSGraphMdmAuthority*) sccm;
+(MSGraphMdmAuthority*) office365;

+(MSGraphMdmAuthority*) UnknownEnumValue;

+(MSGraphMdmAuthority*) mdmAuthorityWithEnumValue:(MSGraphMdmAuthorityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMdmAuthorityValue enumValue;

@end


@interface NSString (MSGraphMdmAuthority)

- (MSGraphMdmAuthority*) toMSGraphMdmAuthority;

@end
