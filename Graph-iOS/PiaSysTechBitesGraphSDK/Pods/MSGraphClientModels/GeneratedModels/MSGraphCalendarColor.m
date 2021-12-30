// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarColor.h"

@interface MSGraphCalendarColor () {
    MSGraphCalendarColorValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCalendarColorValue enumValue;
@end

@implementation MSGraphCalendarColor

+ (MSGraphCalendarColor*) auto {
    static MSGraphCalendarColor *_auto;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _auto = [[MSGraphCalendarColor alloc] init];
        _auto.enumValue = MSGraphCalendarColorAuto;
    });
    return _auto;
}
+ (MSGraphCalendarColor*) lightBlue {
    static MSGraphCalendarColor *_lightBlue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightBlue = [[MSGraphCalendarColor alloc] init];
        _lightBlue.enumValue = MSGraphCalendarColorLightBlue;
    });
    return _lightBlue;
}
+ (MSGraphCalendarColor*) lightGreen {
    static MSGraphCalendarColor *_lightGreen;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightGreen = [[MSGraphCalendarColor alloc] init];
        _lightGreen.enumValue = MSGraphCalendarColorLightGreen;
    });
    return _lightGreen;
}
+ (MSGraphCalendarColor*) lightOrange {
    static MSGraphCalendarColor *_lightOrange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightOrange = [[MSGraphCalendarColor alloc] init];
        _lightOrange.enumValue = MSGraphCalendarColorLightOrange;
    });
    return _lightOrange;
}
+ (MSGraphCalendarColor*) lightGray {
    static MSGraphCalendarColor *_lightGray;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightGray = [[MSGraphCalendarColor alloc] init];
        _lightGray.enumValue = MSGraphCalendarColorLightGray;
    });
    return _lightGray;
}
+ (MSGraphCalendarColor*) lightYellow {
    static MSGraphCalendarColor *_lightYellow;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightYellow = [[MSGraphCalendarColor alloc] init];
        _lightYellow.enumValue = MSGraphCalendarColorLightYellow;
    });
    return _lightYellow;
}
+ (MSGraphCalendarColor*) lightTeal {
    static MSGraphCalendarColor *_lightTeal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightTeal = [[MSGraphCalendarColor alloc] init];
        _lightTeal.enumValue = MSGraphCalendarColorLightTeal;
    });
    return _lightTeal;
}
+ (MSGraphCalendarColor*) lightPink {
    static MSGraphCalendarColor *_lightPink;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightPink = [[MSGraphCalendarColor alloc] init];
        _lightPink.enumValue = MSGraphCalendarColorLightPink;
    });
    return _lightPink;
}
+ (MSGraphCalendarColor*) lightBrown {
    static MSGraphCalendarColor *_lightBrown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightBrown = [[MSGraphCalendarColor alloc] init];
        _lightBrown.enumValue = MSGraphCalendarColorLightBrown;
    });
    return _lightBrown;
}
+ (MSGraphCalendarColor*) lightRed {
    static MSGraphCalendarColor *_lightRed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lightRed = [[MSGraphCalendarColor alloc] init];
        _lightRed.enumValue = MSGraphCalendarColorLightRed;
    });
    return _lightRed;
}
+ (MSGraphCalendarColor*) maxColor {
    static MSGraphCalendarColor *_maxColor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _maxColor = [[MSGraphCalendarColor alloc] init];
        _maxColor.enumValue = MSGraphCalendarColorMaxColor;
    });
    return _maxColor;
}

+ (MSGraphCalendarColor*) UnknownEnumValue {
    static MSGraphCalendarColor *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCalendarColor alloc] init];
        _unknownValue.enumValue = MSGraphCalendarColorEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCalendarColor*) calendarColorWithEnumValue:(MSGraphCalendarColorValue)val {

    switch(val)
    {
        case MSGraphCalendarColorLightBlue:
            return [MSGraphCalendarColor lightBlue];
        case MSGraphCalendarColorLightGreen:
            return [MSGraphCalendarColor lightGreen];
        case MSGraphCalendarColorLightOrange:
            return [MSGraphCalendarColor lightOrange];
        case MSGraphCalendarColorLightGray:
            return [MSGraphCalendarColor lightGray];
        case MSGraphCalendarColorLightYellow:
            return [MSGraphCalendarColor lightYellow];
        case MSGraphCalendarColorLightTeal:
            return [MSGraphCalendarColor lightTeal];
        case MSGraphCalendarColorLightPink:
            return [MSGraphCalendarColor lightPink];
        case MSGraphCalendarColorLightBrown:
            return [MSGraphCalendarColor lightBrown];
        case MSGraphCalendarColorLightRed:
            return [MSGraphCalendarColor lightRed];
        case MSGraphCalendarColorMaxColor:
            return [MSGraphCalendarColor maxColor];
        case MSGraphCalendarColorAuto:
            return [MSGraphCalendarColor auto];
        case MSGraphCalendarColorEndOfEnum:
        default:
            return [MSGraphCalendarColor UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCalendarColorLightBlue:
            return @"lightBlue";
        case MSGraphCalendarColorLightGreen:
            return @"lightGreen";
        case MSGraphCalendarColorLightOrange:
            return @"lightOrange";
        case MSGraphCalendarColorLightGray:
            return @"lightGray";
        case MSGraphCalendarColorLightYellow:
            return @"lightYellow";
        case MSGraphCalendarColorLightTeal:
            return @"lightTeal";
        case MSGraphCalendarColorLightPink:
            return @"lightPink";
        case MSGraphCalendarColorLightBrown:
            return @"lightBrown";
        case MSGraphCalendarColorLightRed:
            return @"lightRed";
        case MSGraphCalendarColorMaxColor:
            return @"maxColor";
        case MSGraphCalendarColorAuto:
            return @"auto";
        case MSGraphCalendarColorEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCalendarColorValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCalendarColor)

- (MSGraphCalendarColor*) toMSGraphCalendarColor{

    if([self isEqualToString:@"lightBlue"])
    {
          return [MSGraphCalendarColor lightBlue];
    }
    else if([self isEqualToString:@"lightGreen"])
    {
          return [MSGraphCalendarColor lightGreen];
    }
    else if([self isEqualToString:@"lightOrange"])
    {
          return [MSGraphCalendarColor lightOrange];
    }
    else if([self isEqualToString:@"lightGray"])
    {
          return [MSGraphCalendarColor lightGray];
    }
    else if([self isEqualToString:@"lightYellow"])
    {
          return [MSGraphCalendarColor lightYellow];
    }
    else if([self isEqualToString:@"lightTeal"])
    {
          return [MSGraphCalendarColor lightTeal];
    }
    else if([self isEqualToString:@"lightPink"])
    {
          return [MSGraphCalendarColor lightPink];
    }
    else if([self isEqualToString:@"lightBrown"])
    {
          return [MSGraphCalendarColor lightBrown];
    }
    else if([self isEqualToString:@"lightRed"])
    {
          return [MSGraphCalendarColor lightRed];
    }
    else if([self isEqualToString:@"maxColor"])
    {
          return [MSGraphCalendarColor maxColor];
    }
    else if([self isEqualToString:@"auto"])
    {
          return [MSGraphCalendarColor auto];
    }
    else {
        return [MSGraphCalendarColor UnknownEnumValue];
    }
}

@end
