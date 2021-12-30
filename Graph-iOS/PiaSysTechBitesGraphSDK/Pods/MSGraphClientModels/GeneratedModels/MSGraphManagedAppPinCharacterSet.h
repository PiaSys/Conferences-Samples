// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedAppPinCharacterSetValue){

	MSGraphManagedAppPinCharacterSetNumeric = 0,
	MSGraphManagedAppPinCharacterSetAlphanumericAndSymbol = 1,
    MSGraphManagedAppPinCharacterSetEndOfEnum
};

@interface MSGraphManagedAppPinCharacterSet : NSObject

+(MSGraphManagedAppPinCharacterSet*) numeric;
+(MSGraphManagedAppPinCharacterSet*) alphanumericAndSymbol;

+(MSGraphManagedAppPinCharacterSet*) UnknownEnumValue;

+(MSGraphManagedAppPinCharacterSet*) managedAppPinCharacterSetWithEnumValue:(MSGraphManagedAppPinCharacterSetValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedAppPinCharacterSetValue enumValue;

@end


@interface NSString (MSGraphManagedAppPinCharacterSet)

- (MSGraphManagedAppPinCharacterSet*) toMSGraphManagedAppPinCharacterSet;

@end
