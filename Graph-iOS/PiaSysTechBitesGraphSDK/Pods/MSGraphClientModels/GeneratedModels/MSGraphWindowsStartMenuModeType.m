// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsStartMenuModeType.h"

@interface MSGraphWindowsStartMenuModeType () {
    MSGraphWindowsStartMenuModeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsStartMenuModeTypeValue enumValue;
@end

@implementation MSGraphWindowsStartMenuModeType

+ (MSGraphWindowsStartMenuModeType*) userDefined {
    static MSGraphWindowsStartMenuModeType *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphWindowsStartMenuModeType alloc] init];
        _userDefined.enumValue = MSGraphWindowsStartMenuModeTypeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphWindowsStartMenuModeType*) fullScreen {
    static MSGraphWindowsStartMenuModeType *_fullScreen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fullScreen = [[MSGraphWindowsStartMenuModeType alloc] init];
        _fullScreen.enumValue = MSGraphWindowsStartMenuModeTypeFullScreen;
    });
    return _fullScreen;
}
+ (MSGraphWindowsStartMenuModeType*) nonFullScreen {
    static MSGraphWindowsStartMenuModeType *_nonFullScreen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nonFullScreen = [[MSGraphWindowsStartMenuModeType alloc] init];
        _nonFullScreen.enumValue = MSGraphWindowsStartMenuModeTypeNonFullScreen;
    });
    return _nonFullScreen;
}

+ (MSGraphWindowsStartMenuModeType*) UnknownEnumValue {
    static MSGraphWindowsStartMenuModeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsStartMenuModeType alloc] init];
        _unknownValue.enumValue = MSGraphWindowsStartMenuModeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsStartMenuModeType*) windowsStartMenuModeTypeWithEnumValue:(MSGraphWindowsStartMenuModeTypeValue)val {

    switch(val)
    {
        case MSGraphWindowsStartMenuModeTypeUserDefined:
            return [MSGraphWindowsStartMenuModeType userDefined];
        case MSGraphWindowsStartMenuModeTypeFullScreen:
            return [MSGraphWindowsStartMenuModeType fullScreen];
        case MSGraphWindowsStartMenuModeTypeNonFullScreen:
            return [MSGraphWindowsStartMenuModeType nonFullScreen];
        case MSGraphWindowsStartMenuModeTypeEndOfEnum:
        default:
            return [MSGraphWindowsStartMenuModeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsStartMenuModeTypeUserDefined:
            return @"userDefined";
        case MSGraphWindowsStartMenuModeTypeFullScreen:
            return @"fullScreen";
        case MSGraphWindowsStartMenuModeTypeNonFullScreen:
            return @"nonFullScreen";
        case MSGraphWindowsStartMenuModeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsStartMenuModeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsStartMenuModeType)

- (MSGraphWindowsStartMenuModeType*) toMSGraphWindowsStartMenuModeType{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphWindowsStartMenuModeType userDefined];
    }
    else if([self isEqualToString:@"fullScreen"])
    {
          return [MSGraphWindowsStartMenuModeType fullScreen];
    }
    else if([self isEqualToString:@"nonFullScreen"])
    {
          return [MSGraphWindowsStartMenuModeType nonFullScreen];
    }
    else {
        return [MSGraphWindowsStartMenuModeType UnknownEnumValue];
    }
}

@end
