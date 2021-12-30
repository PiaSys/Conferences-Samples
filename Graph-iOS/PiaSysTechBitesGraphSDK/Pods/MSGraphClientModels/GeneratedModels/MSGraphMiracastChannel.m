// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMiracastChannel.h"

@interface MSGraphMiracastChannel () {
    MSGraphMiracastChannelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMiracastChannelValue enumValue;
@end

@implementation MSGraphMiracastChannel

+ (MSGraphMiracastChannel*) userDefined {
    static MSGraphMiracastChannel *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphMiracastChannel alloc] init];
        _userDefined.enumValue = MSGraphMiracastChannelUserDefined;
    });
    return _userDefined;
}
+ (MSGraphMiracastChannel*) one {
    static MSGraphMiracastChannel *_one;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _one = [[MSGraphMiracastChannel alloc] init];
        _one.enumValue = MSGraphMiracastChannelOne;
    });
    return _one;
}
+ (MSGraphMiracastChannel*) two {
    static MSGraphMiracastChannel *_two;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _two = [[MSGraphMiracastChannel alloc] init];
        _two.enumValue = MSGraphMiracastChannelTwo;
    });
    return _two;
}
+ (MSGraphMiracastChannel*) three {
    static MSGraphMiracastChannel *_three;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _three = [[MSGraphMiracastChannel alloc] init];
        _three.enumValue = MSGraphMiracastChannelThree;
    });
    return _three;
}
+ (MSGraphMiracastChannel*) four {
    static MSGraphMiracastChannel *_four;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _four = [[MSGraphMiracastChannel alloc] init];
        _four.enumValue = MSGraphMiracastChannelFour;
    });
    return _four;
}
+ (MSGraphMiracastChannel*) five {
    static MSGraphMiracastChannel *_five;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _five = [[MSGraphMiracastChannel alloc] init];
        _five.enumValue = MSGraphMiracastChannelFive;
    });
    return _five;
}
+ (MSGraphMiracastChannel*) six {
    static MSGraphMiracastChannel *_six;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _six = [[MSGraphMiracastChannel alloc] init];
        _six.enumValue = MSGraphMiracastChannelSix;
    });
    return _six;
}
+ (MSGraphMiracastChannel*) seven {
    static MSGraphMiracastChannel *_seven;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _seven = [[MSGraphMiracastChannel alloc] init];
        _seven.enumValue = MSGraphMiracastChannelSeven;
    });
    return _seven;
}
+ (MSGraphMiracastChannel*) eight {
    static MSGraphMiracastChannel *_eight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _eight = [[MSGraphMiracastChannel alloc] init];
        _eight.enumValue = MSGraphMiracastChannelEight;
    });
    return _eight;
}
+ (MSGraphMiracastChannel*) nine {
    static MSGraphMiracastChannel *_nine;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nine = [[MSGraphMiracastChannel alloc] init];
        _nine.enumValue = MSGraphMiracastChannelNine;
    });
    return _nine;
}
+ (MSGraphMiracastChannel*) ten {
    static MSGraphMiracastChannel *_ten;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ten = [[MSGraphMiracastChannel alloc] init];
        _ten.enumValue = MSGraphMiracastChannelTen;
    });
    return _ten;
}
+ (MSGraphMiracastChannel*) eleven {
    static MSGraphMiracastChannel *_eleven;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _eleven = [[MSGraphMiracastChannel alloc] init];
        _eleven.enumValue = MSGraphMiracastChannelEleven;
    });
    return _eleven;
}
+ (MSGraphMiracastChannel*) thirtySix {
    static MSGraphMiracastChannel *_thirtySix;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _thirtySix = [[MSGraphMiracastChannel alloc] init];
        _thirtySix.enumValue = MSGraphMiracastChannelThirtySix;
    });
    return _thirtySix;
}
+ (MSGraphMiracastChannel*) forty {
    static MSGraphMiracastChannel *_forty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _forty = [[MSGraphMiracastChannel alloc] init];
        _forty.enumValue = MSGraphMiracastChannelForty;
    });
    return _forty;
}
+ (MSGraphMiracastChannel*) fortyFour {
    static MSGraphMiracastChannel *_fortyFour;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fortyFour = [[MSGraphMiracastChannel alloc] init];
        _fortyFour.enumValue = MSGraphMiracastChannelFortyFour;
    });
    return _fortyFour;
}
+ (MSGraphMiracastChannel*) fortyEight {
    static MSGraphMiracastChannel *_fortyEight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fortyEight = [[MSGraphMiracastChannel alloc] init];
        _fortyEight.enumValue = MSGraphMiracastChannelFortyEight;
    });
    return _fortyEight;
}
+ (MSGraphMiracastChannel*) oneHundredFortyNine {
    static MSGraphMiracastChannel *_oneHundredFortyNine;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneHundredFortyNine = [[MSGraphMiracastChannel alloc] init];
        _oneHundredFortyNine.enumValue = MSGraphMiracastChannelOneHundredFortyNine;
    });
    return _oneHundredFortyNine;
}
+ (MSGraphMiracastChannel*) oneHundredFiftyThree {
    static MSGraphMiracastChannel *_oneHundredFiftyThree;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneHundredFiftyThree = [[MSGraphMiracastChannel alloc] init];
        _oneHundredFiftyThree.enumValue = MSGraphMiracastChannelOneHundredFiftyThree;
    });
    return _oneHundredFiftyThree;
}
+ (MSGraphMiracastChannel*) oneHundredFiftySeven {
    static MSGraphMiracastChannel *_oneHundredFiftySeven;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneHundredFiftySeven = [[MSGraphMiracastChannel alloc] init];
        _oneHundredFiftySeven.enumValue = MSGraphMiracastChannelOneHundredFiftySeven;
    });
    return _oneHundredFiftySeven;
}
+ (MSGraphMiracastChannel*) oneHundredSixtyOne {
    static MSGraphMiracastChannel *_oneHundredSixtyOne;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneHundredSixtyOne = [[MSGraphMiracastChannel alloc] init];
        _oneHundredSixtyOne.enumValue = MSGraphMiracastChannelOneHundredSixtyOne;
    });
    return _oneHundredSixtyOne;
}
+ (MSGraphMiracastChannel*) oneHundredSixtyFive {
    static MSGraphMiracastChannel *_oneHundredSixtyFive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneHundredSixtyFive = [[MSGraphMiracastChannel alloc] init];
        _oneHundredSixtyFive.enumValue = MSGraphMiracastChannelOneHundredSixtyFive;
    });
    return _oneHundredSixtyFive;
}

+ (MSGraphMiracastChannel*) UnknownEnumValue {
    static MSGraphMiracastChannel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMiracastChannel alloc] init];
        _unknownValue.enumValue = MSGraphMiracastChannelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMiracastChannel*) miracastChannelWithEnumValue:(MSGraphMiracastChannelValue)val {

    switch(val)
    {
        case MSGraphMiracastChannelUserDefined:
            return [MSGraphMiracastChannel userDefined];
        case MSGraphMiracastChannelOne:
            return [MSGraphMiracastChannel one];
        case MSGraphMiracastChannelTwo:
            return [MSGraphMiracastChannel two];
        case MSGraphMiracastChannelThree:
            return [MSGraphMiracastChannel three];
        case MSGraphMiracastChannelFour:
            return [MSGraphMiracastChannel four];
        case MSGraphMiracastChannelFive:
            return [MSGraphMiracastChannel five];
        case MSGraphMiracastChannelSix:
            return [MSGraphMiracastChannel six];
        case MSGraphMiracastChannelSeven:
            return [MSGraphMiracastChannel seven];
        case MSGraphMiracastChannelEight:
            return [MSGraphMiracastChannel eight];
        case MSGraphMiracastChannelNine:
            return [MSGraphMiracastChannel nine];
        case MSGraphMiracastChannelTen:
            return [MSGraphMiracastChannel ten];
        case MSGraphMiracastChannelEleven:
            return [MSGraphMiracastChannel eleven];
        case MSGraphMiracastChannelThirtySix:
            return [MSGraphMiracastChannel thirtySix];
        case MSGraphMiracastChannelForty:
            return [MSGraphMiracastChannel forty];
        case MSGraphMiracastChannelFortyFour:
            return [MSGraphMiracastChannel fortyFour];
        case MSGraphMiracastChannelFortyEight:
            return [MSGraphMiracastChannel fortyEight];
        case MSGraphMiracastChannelOneHundredFortyNine:
            return [MSGraphMiracastChannel oneHundredFortyNine];
        case MSGraphMiracastChannelOneHundredFiftyThree:
            return [MSGraphMiracastChannel oneHundredFiftyThree];
        case MSGraphMiracastChannelOneHundredFiftySeven:
            return [MSGraphMiracastChannel oneHundredFiftySeven];
        case MSGraphMiracastChannelOneHundredSixtyOne:
            return [MSGraphMiracastChannel oneHundredSixtyOne];
        case MSGraphMiracastChannelOneHundredSixtyFive:
            return [MSGraphMiracastChannel oneHundredSixtyFive];
        case MSGraphMiracastChannelEndOfEnum:
        default:
            return [MSGraphMiracastChannel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMiracastChannelUserDefined:
            return @"userDefined";
        case MSGraphMiracastChannelOne:
            return @"one";
        case MSGraphMiracastChannelTwo:
            return @"two";
        case MSGraphMiracastChannelThree:
            return @"three";
        case MSGraphMiracastChannelFour:
            return @"four";
        case MSGraphMiracastChannelFive:
            return @"five";
        case MSGraphMiracastChannelSix:
            return @"six";
        case MSGraphMiracastChannelSeven:
            return @"seven";
        case MSGraphMiracastChannelEight:
            return @"eight";
        case MSGraphMiracastChannelNine:
            return @"nine";
        case MSGraphMiracastChannelTen:
            return @"ten";
        case MSGraphMiracastChannelEleven:
            return @"eleven";
        case MSGraphMiracastChannelThirtySix:
            return @"thirtySix";
        case MSGraphMiracastChannelForty:
            return @"forty";
        case MSGraphMiracastChannelFortyFour:
            return @"fortyFour";
        case MSGraphMiracastChannelFortyEight:
            return @"fortyEight";
        case MSGraphMiracastChannelOneHundredFortyNine:
            return @"oneHundredFortyNine";
        case MSGraphMiracastChannelOneHundredFiftyThree:
            return @"oneHundredFiftyThree";
        case MSGraphMiracastChannelOneHundredFiftySeven:
            return @"oneHundredFiftySeven";
        case MSGraphMiracastChannelOneHundredSixtyOne:
            return @"oneHundredSixtyOne";
        case MSGraphMiracastChannelOneHundredSixtyFive:
            return @"oneHundredSixtyFive";
        case MSGraphMiracastChannelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMiracastChannelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMiracastChannel)

- (MSGraphMiracastChannel*) toMSGraphMiracastChannel{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphMiracastChannel userDefined];
    }
    else if([self isEqualToString:@"one"])
    {
          return [MSGraphMiracastChannel one];
    }
    else if([self isEqualToString:@"two"])
    {
          return [MSGraphMiracastChannel two];
    }
    else if([self isEqualToString:@"three"])
    {
          return [MSGraphMiracastChannel three];
    }
    else if([self isEqualToString:@"four"])
    {
          return [MSGraphMiracastChannel four];
    }
    else if([self isEqualToString:@"five"])
    {
          return [MSGraphMiracastChannel five];
    }
    else if([self isEqualToString:@"six"])
    {
          return [MSGraphMiracastChannel six];
    }
    else if([self isEqualToString:@"seven"])
    {
          return [MSGraphMiracastChannel seven];
    }
    else if([self isEqualToString:@"eight"])
    {
          return [MSGraphMiracastChannel eight];
    }
    else if([self isEqualToString:@"nine"])
    {
          return [MSGraphMiracastChannel nine];
    }
    else if([self isEqualToString:@"ten"])
    {
          return [MSGraphMiracastChannel ten];
    }
    else if([self isEqualToString:@"eleven"])
    {
          return [MSGraphMiracastChannel eleven];
    }
    else if([self isEqualToString:@"thirtySix"])
    {
          return [MSGraphMiracastChannel thirtySix];
    }
    else if([self isEqualToString:@"forty"])
    {
          return [MSGraphMiracastChannel forty];
    }
    else if([self isEqualToString:@"fortyFour"])
    {
          return [MSGraphMiracastChannel fortyFour];
    }
    else if([self isEqualToString:@"fortyEight"])
    {
          return [MSGraphMiracastChannel fortyEight];
    }
    else if([self isEqualToString:@"oneHundredFortyNine"])
    {
          return [MSGraphMiracastChannel oneHundredFortyNine];
    }
    else if([self isEqualToString:@"oneHundredFiftyThree"])
    {
          return [MSGraphMiracastChannel oneHundredFiftyThree];
    }
    else if([self isEqualToString:@"oneHundredFiftySeven"])
    {
          return [MSGraphMiracastChannel oneHundredFiftySeven];
    }
    else if([self isEqualToString:@"oneHundredSixtyOne"])
    {
          return [MSGraphMiracastChannel oneHundredSixtyOne];
    }
    else if([self isEqualToString:@"oneHundredSixtyFive"])
    {
          return [MSGraphMiracastChannel oneHundredSixtyFive];
    }
    else {
        return [MSGraphMiracastChannel UnknownEnumValue];
    }
}

@end
