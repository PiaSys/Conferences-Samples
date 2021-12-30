// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphInstallIntent.h"

@interface MSGraphInstallIntent () {
    MSGraphInstallIntentValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphInstallIntentValue enumValue;
@end

@implementation MSGraphInstallIntent

+ (MSGraphInstallIntent*) available {
    static MSGraphInstallIntent *_available;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _available = [[MSGraphInstallIntent alloc] init];
        _available.enumValue = MSGraphInstallIntentAvailable;
    });
    return _available;
}
+ (MSGraphInstallIntent*) required {
    static MSGraphInstallIntent *_required;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _required = [[MSGraphInstallIntent alloc] init];
        _required.enumValue = MSGraphInstallIntentRequired;
    });
    return _required;
}
+ (MSGraphInstallIntent*) uninstall {
    static MSGraphInstallIntent *_uninstall;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _uninstall = [[MSGraphInstallIntent alloc] init];
        _uninstall.enumValue = MSGraphInstallIntentUninstall;
    });
    return _uninstall;
}
+ (MSGraphInstallIntent*) availableWithoutEnrollment {
    static MSGraphInstallIntent *_availableWithoutEnrollment;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _availableWithoutEnrollment = [[MSGraphInstallIntent alloc] init];
        _availableWithoutEnrollment.enumValue = MSGraphInstallIntentAvailableWithoutEnrollment;
    });
    return _availableWithoutEnrollment;
}

+ (MSGraphInstallIntent*) UnknownEnumValue {
    static MSGraphInstallIntent *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphInstallIntent alloc] init];
        _unknownValue.enumValue = MSGraphInstallIntentEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphInstallIntent*) installIntentWithEnumValue:(MSGraphInstallIntentValue)val {

    switch(val)
    {
        case MSGraphInstallIntentAvailable:
            return [MSGraphInstallIntent available];
        case MSGraphInstallIntentRequired:
            return [MSGraphInstallIntent required];
        case MSGraphInstallIntentUninstall:
            return [MSGraphInstallIntent uninstall];
        case MSGraphInstallIntentAvailableWithoutEnrollment:
            return [MSGraphInstallIntent availableWithoutEnrollment];
        case MSGraphInstallIntentEndOfEnum:
        default:
            return [MSGraphInstallIntent UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphInstallIntentAvailable:
            return @"available";
        case MSGraphInstallIntentRequired:
            return @"required";
        case MSGraphInstallIntentUninstall:
            return @"uninstall";
        case MSGraphInstallIntentAvailableWithoutEnrollment:
            return @"availableWithoutEnrollment";
        case MSGraphInstallIntentEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphInstallIntentValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphInstallIntent)

- (MSGraphInstallIntent*) toMSGraphInstallIntent{

    if([self isEqualToString:@"available"])
    {
          return [MSGraphInstallIntent available];
    }
    else if([self isEqualToString:@"required"])
    {
          return [MSGraphInstallIntent required];
    }
    else if([self isEqualToString:@"uninstall"])
    {
          return [MSGraphInstallIntent uninstall];
    }
    else if([self isEqualToString:@"availableWithoutEnrollment"])
    {
          return [MSGraphInstallIntent availableWithoutEnrollment];
    }
    else {
        return [MSGraphInstallIntent UnknownEnumValue];
    }
}

@end
