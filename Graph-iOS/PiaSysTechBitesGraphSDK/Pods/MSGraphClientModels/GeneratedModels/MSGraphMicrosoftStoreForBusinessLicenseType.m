// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMicrosoftStoreForBusinessLicenseType.h"

@interface MSGraphMicrosoftStoreForBusinessLicenseType () {
    MSGraphMicrosoftStoreForBusinessLicenseTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMicrosoftStoreForBusinessLicenseTypeValue enumValue;
@end

@implementation MSGraphMicrosoftStoreForBusinessLicenseType

+ (MSGraphMicrosoftStoreForBusinessLicenseType*) offline {
    static MSGraphMicrosoftStoreForBusinessLicenseType *_offline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _offline = [[MSGraphMicrosoftStoreForBusinessLicenseType alloc] init];
        _offline.enumValue = MSGraphMicrosoftStoreForBusinessLicenseTypeOffline;
    });
    return _offline;
}
+ (MSGraphMicrosoftStoreForBusinessLicenseType*) online {
    static MSGraphMicrosoftStoreForBusinessLicenseType *_online;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _online = [[MSGraphMicrosoftStoreForBusinessLicenseType alloc] init];
        _online.enumValue = MSGraphMicrosoftStoreForBusinessLicenseTypeOnline;
    });
    return _online;
}

+ (MSGraphMicrosoftStoreForBusinessLicenseType*) UnknownEnumValue {
    static MSGraphMicrosoftStoreForBusinessLicenseType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMicrosoftStoreForBusinessLicenseType alloc] init];
        _unknownValue.enumValue = MSGraphMicrosoftStoreForBusinessLicenseTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMicrosoftStoreForBusinessLicenseType*) microsoftStoreForBusinessLicenseTypeWithEnumValue:(MSGraphMicrosoftStoreForBusinessLicenseTypeValue)val {

    switch(val)
    {
        case MSGraphMicrosoftStoreForBusinessLicenseTypeOffline:
            return [MSGraphMicrosoftStoreForBusinessLicenseType offline];
        case MSGraphMicrosoftStoreForBusinessLicenseTypeOnline:
            return [MSGraphMicrosoftStoreForBusinessLicenseType online];
        case MSGraphMicrosoftStoreForBusinessLicenseTypeEndOfEnum:
        default:
            return [MSGraphMicrosoftStoreForBusinessLicenseType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMicrosoftStoreForBusinessLicenseTypeOffline:
            return @"offline";
        case MSGraphMicrosoftStoreForBusinessLicenseTypeOnline:
            return @"online";
        case MSGraphMicrosoftStoreForBusinessLicenseTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMicrosoftStoreForBusinessLicenseTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMicrosoftStoreForBusinessLicenseType)

- (MSGraphMicrosoftStoreForBusinessLicenseType*) toMSGraphMicrosoftStoreForBusinessLicenseType{

    if([self isEqualToString:@"offline"])
    {
          return [MSGraphMicrosoftStoreForBusinessLicenseType offline];
    }
    else if([self isEqualToString:@"online"])
    {
          return [MSGraphMicrosoftStoreForBusinessLicenseType online];
    }
    else {
        return [MSGraphMicrosoftStoreForBusinessLicenseType UnknownEnumValue];
    }
}

@end
