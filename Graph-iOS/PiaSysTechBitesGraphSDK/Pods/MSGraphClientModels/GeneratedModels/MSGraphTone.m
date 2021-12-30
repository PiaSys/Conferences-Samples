// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTone.h"

@interface MSGraphTone () {
    MSGraphToneValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphToneValue enumValue;
@end

@implementation MSGraphTone

+ (MSGraphTone*) tone0 {
    static MSGraphTone *_tone0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone0 = [[MSGraphTone alloc] init];
        _tone0.enumValue = MSGraphToneTone0;
    });
    return _tone0;
}
+ (MSGraphTone*) tone1 {
    static MSGraphTone *_tone1;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone1 = [[MSGraphTone alloc] init];
        _tone1.enumValue = MSGraphToneTone1;
    });
    return _tone1;
}
+ (MSGraphTone*) tone2 {
    static MSGraphTone *_tone2;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone2 = [[MSGraphTone alloc] init];
        _tone2.enumValue = MSGraphToneTone2;
    });
    return _tone2;
}
+ (MSGraphTone*) tone3 {
    static MSGraphTone *_tone3;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone3 = [[MSGraphTone alloc] init];
        _tone3.enumValue = MSGraphToneTone3;
    });
    return _tone3;
}
+ (MSGraphTone*) tone4 {
    static MSGraphTone *_tone4;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone4 = [[MSGraphTone alloc] init];
        _tone4.enumValue = MSGraphToneTone4;
    });
    return _tone4;
}
+ (MSGraphTone*) tone5 {
    static MSGraphTone *_tone5;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone5 = [[MSGraphTone alloc] init];
        _tone5.enumValue = MSGraphToneTone5;
    });
    return _tone5;
}
+ (MSGraphTone*) tone6 {
    static MSGraphTone *_tone6;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone6 = [[MSGraphTone alloc] init];
        _tone6.enumValue = MSGraphToneTone6;
    });
    return _tone6;
}
+ (MSGraphTone*) tone7 {
    static MSGraphTone *_tone7;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone7 = [[MSGraphTone alloc] init];
        _tone7.enumValue = MSGraphToneTone7;
    });
    return _tone7;
}
+ (MSGraphTone*) tone8 {
    static MSGraphTone *_tone8;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone8 = [[MSGraphTone alloc] init];
        _tone8.enumValue = MSGraphToneTone8;
    });
    return _tone8;
}
+ (MSGraphTone*) tone9 {
    static MSGraphTone *_tone9;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tone9 = [[MSGraphTone alloc] init];
        _tone9.enumValue = MSGraphToneTone9;
    });
    return _tone9;
}
+ (MSGraphTone*) star {
    static MSGraphTone *_star;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _star = [[MSGraphTone alloc] init];
        _star.enumValue = MSGraphToneStar;
    });
    return _star;
}
+ (MSGraphTone*) pound {
    static MSGraphTone *_pound;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pound = [[MSGraphTone alloc] init];
        _pound.enumValue = MSGraphTonePound;
    });
    return _pound;
}
+ (MSGraphTone*) a {
    static MSGraphTone *_a;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _a = [[MSGraphTone alloc] init];
        _a.enumValue = MSGraphToneA;
    });
    return _a;
}
+ (MSGraphTone*) b {
    static MSGraphTone *_b;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _b = [[MSGraphTone alloc] init];
        _b.enumValue = MSGraphToneB;
    });
    return _b;
}
+ (MSGraphTone*) c {
    static MSGraphTone *_c;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _c = [[MSGraphTone alloc] init];
        _c.enumValue = MSGraphToneC;
    });
    return _c;
}
+ (MSGraphTone*) d {
    static MSGraphTone *_d;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _d = [[MSGraphTone alloc] init];
        _d.enumValue = MSGraphToneD;
    });
    return _d;
}
+ (MSGraphTone*) flash {
    static MSGraphTone *_flash;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _flash = [[MSGraphTone alloc] init];
        _flash.enumValue = MSGraphToneFlash;
    });
    return _flash;
}

+ (MSGraphTone*) UnknownEnumValue {
    static MSGraphTone *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTone alloc] init];
        _unknownValue.enumValue = MSGraphToneEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTone*) toneWithEnumValue:(MSGraphToneValue)val {

    switch(val)
    {
        case MSGraphToneTone0:
            return [MSGraphTone tone0];
        case MSGraphToneTone1:
            return [MSGraphTone tone1];
        case MSGraphToneTone2:
            return [MSGraphTone tone2];
        case MSGraphToneTone3:
            return [MSGraphTone tone3];
        case MSGraphToneTone4:
            return [MSGraphTone tone4];
        case MSGraphToneTone5:
            return [MSGraphTone tone5];
        case MSGraphToneTone6:
            return [MSGraphTone tone6];
        case MSGraphToneTone7:
            return [MSGraphTone tone7];
        case MSGraphToneTone8:
            return [MSGraphTone tone8];
        case MSGraphToneTone9:
            return [MSGraphTone tone9];
        case MSGraphToneStar:
            return [MSGraphTone star];
        case MSGraphTonePound:
            return [MSGraphTone pound];
        case MSGraphToneA:
            return [MSGraphTone a];
        case MSGraphToneB:
            return [MSGraphTone b];
        case MSGraphToneC:
            return [MSGraphTone c];
        case MSGraphToneD:
            return [MSGraphTone d];
        case MSGraphToneFlash:
            return [MSGraphTone flash];
        case MSGraphToneEndOfEnum:
        default:
            return [MSGraphTone UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphToneTone0:
            return @"tone0";
        case MSGraphToneTone1:
            return @"tone1";
        case MSGraphToneTone2:
            return @"tone2";
        case MSGraphToneTone3:
            return @"tone3";
        case MSGraphToneTone4:
            return @"tone4";
        case MSGraphToneTone5:
            return @"tone5";
        case MSGraphToneTone6:
            return @"tone6";
        case MSGraphToneTone7:
            return @"tone7";
        case MSGraphToneTone8:
            return @"tone8";
        case MSGraphToneTone9:
            return @"tone9";
        case MSGraphToneStar:
            return @"star";
        case MSGraphTonePound:
            return @"pound";
        case MSGraphToneA:
            return @"a";
        case MSGraphToneB:
            return @"b";
        case MSGraphToneC:
            return @"c";
        case MSGraphToneD:
            return @"d";
        case MSGraphToneFlash:
            return @"flash";
        case MSGraphToneEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphToneValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTone)

- (MSGraphTone*) toMSGraphTone{

    if([self isEqualToString:@"tone0"])
    {
          return [MSGraphTone tone0];
    }
    else if([self isEqualToString:@"tone1"])
    {
          return [MSGraphTone tone1];
    }
    else if([self isEqualToString:@"tone2"])
    {
          return [MSGraphTone tone2];
    }
    else if([self isEqualToString:@"tone3"])
    {
          return [MSGraphTone tone3];
    }
    else if([self isEqualToString:@"tone4"])
    {
          return [MSGraphTone tone4];
    }
    else if([self isEqualToString:@"tone5"])
    {
          return [MSGraphTone tone5];
    }
    else if([self isEqualToString:@"tone6"])
    {
          return [MSGraphTone tone6];
    }
    else if([self isEqualToString:@"tone7"])
    {
          return [MSGraphTone tone7];
    }
    else if([self isEqualToString:@"tone8"])
    {
          return [MSGraphTone tone8];
    }
    else if([self isEqualToString:@"tone9"])
    {
          return [MSGraphTone tone9];
    }
    else if([self isEqualToString:@"star"])
    {
          return [MSGraphTone star];
    }
    else if([self isEqualToString:@"pound"])
    {
          return [MSGraphTone pound];
    }
    else if([self isEqualToString:@"a"])
    {
          return [MSGraphTone a];
    }
    else if([self isEqualToString:@"b"])
    {
          return [MSGraphTone b];
    }
    else if([self isEqualToString:@"c"])
    {
          return [MSGraphTone c];
    }
    else if([self isEqualToString:@"d"])
    {
          return [MSGraphTone d];
    }
    else if([self isEqualToString:@"flash"])
    {
          return [MSGraphTone flash];
    }
    else {
        return [MSGraphTone UnknownEnumValue];
    }
}

@end
