// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphIosNotificationAlertType.h"

@interface MSGraphIosNotificationAlertType () {
    MSGraphIosNotificationAlertTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphIosNotificationAlertTypeValue enumValue;
@end

@implementation MSGraphIosNotificationAlertType

+ (MSGraphIosNotificationAlertType*) deviceDefault {
    static MSGraphIosNotificationAlertType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphIosNotificationAlertType alloc] init];
        _deviceDefault.enumValue = MSGraphIosNotificationAlertTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphIosNotificationAlertType*) banner {
    static MSGraphIosNotificationAlertType *_banner;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _banner = [[MSGraphIosNotificationAlertType alloc] init];
        _banner.enumValue = MSGraphIosNotificationAlertTypeBanner;
    });
    return _banner;
}
+ (MSGraphIosNotificationAlertType*) modal {
    static MSGraphIosNotificationAlertType *_modal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _modal = [[MSGraphIosNotificationAlertType alloc] init];
        _modal.enumValue = MSGraphIosNotificationAlertTypeModal;
    });
    return _modal;
}
+ (MSGraphIosNotificationAlertType*) none {
    static MSGraphIosNotificationAlertType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphIosNotificationAlertType alloc] init];
        _none.enumValue = MSGraphIosNotificationAlertTypeNone;
    });
    return _none;
}

+ (MSGraphIosNotificationAlertType*) UnknownEnumValue {
    static MSGraphIosNotificationAlertType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphIosNotificationAlertType alloc] init];
        _unknownValue.enumValue = MSGraphIosNotificationAlertTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphIosNotificationAlertType*) iosNotificationAlertTypeWithEnumValue:(MSGraphIosNotificationAlertTypeValue)val {

    switch(val)
    {
        case MSGraphIosNotificationAlertTypeDeviceDefault:
            return [MSGraphIosNotificationAlertType deviceDefault];
        case MSGraphIosNotificationAlertTypeBanner:
            return [MSGraphIosNotificationAlertType banner];
        case MSGraphIosNotificationAlertTypeModal:
            return [MSGraphIosNotificationAlertType modal];
        case MSGraphIosNotificationAlertTypeNone:
            return [MSGraphIosNotificationAlertType none];
        case MSGraphIosNotificationAlertTypeEndOfEnum:
        default:
            return [MSGraphIosNotificationAlertType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphIosNotificationAlertTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphIosNotificationAlertTypeBanner:
            return @"banner";
        case MSGraphIosNotificationAlertTypeModal:
            return @"modal";
        case MSGraphIosNotificationAlertTypeNone:
            return @"none";
        case MSGraphIosNotificationAlertTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphIosNotificationAlertTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphIosNotificationAlertType)

- (MSGraphIosNotificationAlertType*) toMSGraphIosNotificationAlertType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphIosNotificationAlertType deviceDefault];
    }
    else if([self isEqualToString:@"banner"])
    {
          return [MSGraphIosNotificationAlertType banner];
    }
    else if([self isEqualToString:@"modal"])
    {
          return [MSGraphIosNotificationAlertType modal];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphIosNotificationAlertType none];
    }
    else {
        return [MSGraphIosNotificationAlertType UnknownEnumValue];
    }
}

@end
