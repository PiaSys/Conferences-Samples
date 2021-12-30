// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphLogonTypeValue){

	MSGraphLogonTypeUnknown = 0,
	MSGraphLogonTypeInteractive = 1,
	MSGraphLogonTypeRemoteInteractive = 2,
	MSGraphLogonTypeNetwork = 3,
	MSGraphLogonTypeBatch = 4,
	MSGraphLogonTypeService = 5,
	MSGraphLogonTypeUnknownFutureValue = 127,
    MSGraphLogonTypeEndOfEnum
};

@interface MSGraphLogonType : NSObject

+(MSGraphLogonType*) unknown;
+(MSGraphLogonType*) interactive;
+(MSGraphLogonType*) remoteInteractive;
+(MSGraphLogonType*) network;
+(MSGraphLogonType*) batch;
+(MSGraphLogonType*) service;
+(MSGraphLogonType*) unknownFutureValue;

+(MSGraphLogonType*) UnknownEnumValue;

+(MSGraphLogonType*) logonTypeWithEnumValue:(MSGraphLogonTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphLogonTypeValue enumValue;

@end


@interface NSString (MSGraphLogonType)

- (MSGraphLogonType*) toMSGraphLogonType;

@end
