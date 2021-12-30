// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphIosNotificationAlertTypeValue){

	MSGraphIosNotificationAlertTypeDeviceDefault = 0,
	MSGraphIosNotificationAlertTypeBanner = 1,
	MSGraphIosNotificationAlertTypeModal = 2,
	MSGraphIosNotificationAlertTypeNone = 3,
    MSGraphIosNotificationAlertTypeEndOfEnum
};

@interface MSGraphIosNotificationAlertType : NSObject

+(MSGraphIosNotificationAlertType*) deviceDefault;
+(MSGraphIosNotificationAlertType*) banner;
+(MSGraphIosNotificationAlertType*) modal;
+(MSGraphIosNotificationAlertType*) none;

+(MSGraphIosNotificationAlertType*) UnknownEnumValue;

+(MSGraphIosNotificationAlertType*) iosNotificationAlertTypeWithEnumValue:(MSGraphIosNotificationAlertTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphIosNotificationAlertTypeValue enumValue;

@end


@interface NSString (MSGraphIosNotificationAlertType)

- (MSGraphIosNotificationAlertType*) toMSGraphIosNotificationAlertType;

@end
