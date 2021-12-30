// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCategoryColor.h"

@interface MSGraphCategoryColor () {
    MSGraphCategoryColorValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCategoryColorValue enumValue;
@end

@implementation MSGraphCategoryColor

+ (MSGraphCategoryColor*) none {
    static MSGraphCategoryColor *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphCategoryColor alloc] init];
        _none.enumValue = MSGraphCategoryColorNone;
    });
    return _none;
}
+ (MSGraphCategoryColor*) preset0 {
    static MSGraphCategoryColor *_preset0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset0 = [[MSGraphCategoryColor alloc] init];
        _preset0.enumValue = MSGraphCategoryColorPreset0;
    });
    return _preset0;
}
+ (MSGraphCategoryColor*) preset1 {
    static MSGraphCategoryColor *_preset1;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset1 = [[MSGraphCategoryColor alloc] init];
        _preset1.enumValue = MSGraphCategoryColorPreset1;
    });
    return _preset1;
}
+ (MSGraphCategoryColor*) preset2 {
    static MSGraphCategoryColor *_preset2;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset2 = [[MSGraphCategoryColor alloc] init];
        _preset2.enumValue = MSGraphCategoryColorPreset2;
    });
    return _preset2;
}
+ (MSGraphCategoryColor*) preset3 {
    static MSGraphCategoryColor *_preset3;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset3 = [[MSGraphCategoryColor alloc] init];
        _preset3.enumValue = MSGraphCategoryColorPreset3;
    });
    return _preset3;
}
+ (MSGraphCategoryColor*) preset4 {
    static MSGraphCategoryColor *_preset4;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset4 = [[MSGraphCategoryColor alloc] init];
        _preset4.enumValue = MSGraphCategoryColorPreset4;
    });
    return _preset4;
}
+ (MSGraphCategoryColor*) preset5 {
    static MSGraphCategoryColor *_preset5;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset5 = [[MSGraphCategoryColor alloc] init];
        _preset5.enumValue = MSGraphCategoryColorPreset5;
    });
    return _preset5;
}
+ (MSGraphCategoryColor*) preset6 {
    static MSGraphCategoryColor *_preset6;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset6 = [[MSGraphCategoryColor alloc] init];
        _preset6.enumValue = MSGraphCategoryColorPreset6;
    });
    return _preset6;
}
+ (MSGraphCategoryColor*) preset7 {
    static MSGraphCategoryColor *_preset7;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset7 = [[MSGraphCategoryColor alloc] init];
        _preset7.enumValue = MSGraphCategoryColorPreset7;
    });
    return _preset7;
}
+ (MSGraphCategoryColor*) preset8 {
    static MSGraphCategoryColor *_preset8;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset8 = [[MSGraphCategoryColor alloc] init];
        _preset8.enumValue = MSGraphCategoryColorPreset8;
    });
    return _preset8;
}
+ (MSGraphCategoryColor*) preset9 {
    static MSGraphCategoryColor *_preset9;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset9 = [[MSGraphCategoryColor alloc] init];
        _preset9.enumValue = MSGraphCategoryColorPreset9;
    });
    return _preset9;
}
+ (MSGraphCategoryColor*) preset10 {
    static MSGraphCategoryColor *_preset10;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset10 = [[MSGraphCategoryColor alloc] init];
        _preset10.enumValue = MSGraphCategoryColorPreset10;
    });
    return _preset10;
}
+ (MSGraphCategoryColor*) preset11 {
    static MSGraphCategoryColor *_preset11;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset11 = [[MSGraphCategoryColor alloc] init];
        _preset11.enumValue = MSGraphCategoryColorPreset11;
    });
    return _preset11;
}
+ (MSGraphCategoryColor*) preset12 {
    static MSGraphCategoryColor *_preset12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset12 = [[MSGraphCategoryColor alloc] init];
        _preset12.enumValue = MSGraphCategoryColorPreset12;
    });
    return _preset12;
}
+ (MSGraphCategoryColor*) preset13 {
    static MSGraphCategoryColor *_preset13;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset13 = [[MSGraphCategoryColor alloc] init];
        _preset13.enumValue = MSGraphCategoryColorPreset13;
    });
    return _preset13;
}
+ (MSGraphCategoryColor*) preset14 {
    static MSGraphCategoryColor *_preset14;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset14 = [[MSGraphCategoryColor alloc] init];
        _preset14.enumValue = MSGraphCategoryColorPreset14;
    });
    return _preset14;
}
+ (MSGraphCategoryColor*) preset15 {
    static MSGraphCategoryColor *_preset15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset15 = [[MSGraphCategoryColor alloc] init];
        _preset15.enumValue = MSGraphCategoryColorPreset15;
    });
    return _preset15;
}
+ (MSGraphCategoryColor*) preset16 {
    static MSGraphCategoryColor *_preset16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset16 = [[MSGraphCategoryColor alloc] init];
        _preset16.enumValue = MSGraphCategoryColorPreset16;
    });
    return _preset16;
}
+ (MSGraphCategoryColor*) preset17 {
    static MSGraphCategoryColor *_preset17;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset17 = [[MSGraphCategoryColor alloc] init];
        _preset17.enumValue = MSGraphCategoryColorPreset17;
    });
    return _preset17;
}
+ (MSGraphCategoryColor*) preset18 {
    static MSGraphCategoryColor *_preset18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset18 = [[MSGraphCategoryColor alloc] init];
        _preset18.enumValue = MSGraphCategoryColorPreset18;
    });
    return _preset18;
}
+ (MSGraphCategoryColor*) preset19 {
    static MSGraphCategoryColor *_preset19;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset19 = [[MSGraphCategoryColor alloc] init];
        _preset19.enumValue = MSGraphCategoryColorPreset19;
    });
    return _preset19;
}
+ (MSGraphCategoryColor*) preset20 {
    static MSGraphCategoryColor *_preset20;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset20 = [[MSGraphCategoryColor alloc] init];
        _preset20.enumValue = MSGraphCategoryColorPreset20;
    });
    return _preset20;
}
+ (MSGraphCategoryColor*) preset21 {
    static MSGraphCategoryColor *_preset21;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset21 = [[MSGraphCategoryColor alloc] init];
        _preset21.enumValue = MSGraphCategoryColorPreset21;
    });
    return _preset21;
}
+ (MSGraphCategoryColor*) preset22 {
    static MSGraphCategoryColor *_preset22;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset22 = [[MSGraphCategoryColor alloc] init];
        _preset22.enumValue = MSGraphCategoryColorPreset22;
    });
    return _preset22;
}
+ (MSGraphCategoryColor*) preset23 {
    static MSGraphCategoryColor *_preset23;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset23 = [[MSGraphCategoryColor alloc] init];
        _preset23.enumValue = MSGraphCategoryColorPreset23;
    });
    return _preset23;
}
+ (MSGraphCategoryColor*) preset24 {
    static MSGraphCategoryColor *_preset24;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preset24 = [[MSGraphCategoryColor alloc] init];
        _preset24.enumValue = MSGraphCategoryColorPreset24;
    });
    return _preset24;
}

+ (MSGraphCategoryColor*) UnknownEnumValue {
    static MSGraphCategoryColor *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCategoryColor alloc] init];
        _unknownValue.enumValue = MSGraphCategoryColorEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCategoryColor*) categoryColorWithEnumValue:(MSGraphCategoryColorValue)val {

    switch(val)
    {
        case MSGraphCategoryColorPreset0:
            return [MSGraphCategoryColor preset0];
        case MSGraphCategoryColorPreset1:
            return [MSGraphCategoryColor preset1];
        case MSGraphCategoryColorPreset2:
            return [MSGraphCategoryColor preset2];
        case MSGraphCategoryColorPreset3:
            return [MSGraphCategoryColor preset3];
        case MSGraphCategoryColorPreset4:
            return [MSGraphCategoryColor preset4];
        case MSGraphCategoryColorPreset5:
            return [MSGraphCategoryColor preset5];
        case MSGraphCategoryColorPreset6:
            return [MSGraphCategoryColor preset6];
        case MSGraphCategoryColorPreset7:
            return [MSGraphCategoryColor preset7];
        case MSGraphCategoryColorPreset8:
            return [MSGraphCategoryColor preset8];
        case MSGraphCategoryColorPreset9:
            return [MSGraphCategoryColor preset9];
        case MSGraphCategoryColorPreset10:
            return [MSGraphCategoryColor preset10];
        case MSGraphCategoryColorPreset11:
            return [MSGraphCategoryColor preset11];
        case MSGraphCategoryColorPreset12:
            return [MSGraphCategoryColor preset12];
        case MSGraphCategoryColorPreset13:
            return [MSGraphCategoryColor preset13];
        case MSGraphCategoryColorPreset14:
            return [MSGraphCategoryColor preset14];
        case MSGraphCategoryColorPreset15:
            return [MSGraphCategoryColor preset15];
        case MSGraphCategoryColorPreset16:
            return [MSGraphCategoryColor preset16];
        case MSGraphCategoryColorPreset17:
            return [MSGraphCategoryColor preset17];
        case MSGraphCategoryColorPreset18:
            return [MSGraphCategoryColor preset18];
        case MSGraphCategoryColorPreset19:
            return [MSGraphCategoryColor preset19];
        case MSGraphCategoryColorPreset20:
            return [MSGraphCategoryColor preset20];
        case MSGraphCategoryColorPreset21:
            return [MSGraphCategoryColor preset21];
        case MSGraphCategoryColorPreset22:
            return [MSGraphCategoryColor preset22];
        case MSGraphCategoryColorPreset23:
            return [MSGraphCategoryColor preset23];
        case MSGraphCategoryColorPreset24:
            return [MSGraphCategoryColor preset24];
        case MSGraphCategoryColorNone:
            return [MSGraphCategoryColor none];
        case MSGraphCategoryColorEndOfEnum:
        default:
            return [MSGraphCategoryColor UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCategoryColorPreset0:
            return @"preset0";
        case MSGraphCategoryColorPreset1:
            return @"preset1";
        case MSGraphCategoryColorPreset2:
            return @"preset2";
        case MSGraphCategoryColorPreset3:
            return @"preset3";
        case MSGraphCategoryColorPreset4:
            return @"preset4";
        case MSGraphCategoryColorPreset5:
            return @"preset5";
        case MSGraphCategoryColorPreset6:
            return @"preset6";
        case MSGraphCategoryColorPreset7:
            return @"preset7";
        case MSGraphCategoryColorPreset8:
            return @"preset8";
        case MSGraphCategoryColorPreset9:
            return @"preset9";
        case MSGraphCategoryColorPreset10:
            return @"preset10";
        case MSGraphCategoryColorPreset11:
            return @"preset11";
        case MSGraphCategoryColorPreset12:
            return @"preset12";
        case MSGraphCategoryColorPreset13:
            return @"preset13";
        case MSGraphCategoryColorPreset14:
            return @"preset14";
        case MSGraphCategoryColorPreset15:
            return @"preset15";
        case MSGraphCategoryColorPreset16:
            return @"preset16";
        case MSGraphCategoryColorPreset17:
            return @"preset17";
        case MSGraphCategoryColorPreset18:
            return @"preset18";
        case MSGraphCategoryColorPreset19:
            return @"preset19";
        case MSGraphCategoryColorPreset20:
            return @"preset20";
        case MSGraphCategoryColorPreset21:
            return @"preset21";
        case MSGraphCategoryColorPreset22:
            return @"preset22";
        case MSGraphCategoryColorPreset23:
            return @"preset23";
        case MSGraphCategoryColorPreset24:
            return @"preset24";
        case MSGraphCategoryColorNone:
            return @"none";
        case MSGraphCategoryColorEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCategoryColorValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCategoryColor)

- (MSGraphCategoryColor*) toMSGraphCategoryColor{

    if([self isEqualToString:@"preset0"])
    {
          return [MSGraphCategoryColor preset0];
    }
    else if([self isEqualToString:@"preset1"])
    {
          return [MSGraphCategoryColor preset1];
    }
    else if([self isEqualToString:@"preset2"])
    {
          return [MSGraphCategoryColor preset2];
    }
    else if([self isEqualToString:@"preset3"])
    {
          return [MSGraphCategoryColor preset3];
    }
    else if([self isEqualToString:@"preset4"])
    {
          return [MSGraphCategoryColor preset4];
    }
    else if([self isEqualToString:@"preset5"])
    {
          return [MSGraphCategoryColor preset5];
    }
    else if([self isEqualToString:@"preset6"])
    {
          return [MSGraphCategoryColor preset6];
    }
    else if([self isEqualToString:@"preset7"])
    {
          return [MSGraphCategoryColor preset7];
    }
    else if([self isEqualToString:@"preset8"])
    {
          return [MSGraphCategoryColor preset8];
    }
    else if([self isEqualToString:@"preset9"])
    {
          return [MSGraphCategoryColor preset9];
    }
    else if([self isEqualToString:@"preset10"])
    {
          return [MSGraphCategoryColor preset10];
    }
    else if([self isEqualToString:@"preset11"])
    {
          return [MSGraphCategoryColor preset11];
    }
    else if([self isEqualToString:@"preset12"])
    {
          return [MSGraphCategoryColor preset12];
    }
    else if([self isEqualToString:@"preset13"])
    {
          return [MSGraphCategoryColor preset13];
    }
    else if([self isEqualToString:@"preset14"])
    {
          return [MSGraphCategoryColor preset14];
    }
    else if([self isEqualToString:@"preset15"])
    {
          return [MSGraphCategoryColor preset15];
    }
    else if([self isEqualToString:@"preset16"])
    {
          return [MSGraphCategoryColor preset16];
    }
    else if([self isEqualToString:@"preset17"])
    {
          return [MSGraphCategoryColor preset17];
    }
    else if([self isEqualToString:@"preset18"])
    {
          return [MSGraphCategoryColor preset18];
    }
    else if([self isEqualToString:@"preset19"])
    {
          return [MSGraphCategoryColor preset19];
    }
    else if([self isEqualToString:@"preset20"])
    {
          return [MSGraphCategoryColor preset20];
    }
    else if([self isEqualToString:@"preset21"])
    {
          return [MSGraphCategoryColor preset21];
    }
    else if([self isEqualToString:@"preset22"])
    {
          return [MSGraphCategoryColor preset22];
    }
    else if([self isEqualToString:@"preset23"])
    {
          return [MSGraphCategoryColor preset23];
    }
    else if([self isEqualToString:@"preset24"])
    {
          return [MSGraphCategoryColor preset24];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphCategoryColor none];
    }
    else {
        return [MSGraphCategoryColor UnknownEnumValue];
    }
}

@end
