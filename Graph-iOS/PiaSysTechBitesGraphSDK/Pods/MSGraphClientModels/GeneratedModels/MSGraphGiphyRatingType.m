// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphGiphyRatingType.h"

@interface MSGraphGiphyRatingType () {
    MSGraphGiphyRatingTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphGiphyRatingTypeValue enumValue;
@end

@implementation MSGraphGiphyRatingType

+ (MSGraphGiphyRatingType*) moderate {
    static MSGraphGiphyRatingType *_moderate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _moderate = [[MSGraphGiphyRatingType alloc] init];
        _moderate.enumValue = MSGraphGiphyRatingTypeModerate;
    });
    return _moderate;
}
+ (MSGraphGiphyRatingType*) strict {
    static MSGraphGiphyRatingType *_strict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _strict = [[MSGraphGiphyRatingType alloc] init];
        _strict.enumValue = MSGraphGiphyRatingTypeStrict;
    });
    return _strict;
}
+ (MSGraphGiphyRatingType*) unknownFutureValue {
    static MSGraphGiphyRatingType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphGiphyRatingType alloc] init];
        _unknownFutureValue.enumValue = MSGraphGiphyRatingTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphGiphyRatingType*) UnknownEnumValue {
    static MSGraphGiphyRatingType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphGiphyRatingType alloc] init];
        _unknownValue.enumValue = MSGraphGiphyRatingTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphGiphyRatingType*) giphyRatingTypeWithEnumValue:(MSGraphGiphyRatingTypeValue)val {

    switch(val)
    {
        case MSGraphGiphyRatingTypeModerate:
            return [MSGraphGiphyRatingType moderate];
        case MSGraphGiphyRatingTypeStrict:
            return [MSGraphGiphyRatingType strict];
        case MSGraphGiphyRatingTypeUnknownFutureValue:
            return [MSGraphGiphyRatingType unknownFutureValue];
        case MSGraphGiphyRatingTypeEndOfEnum:
        default:
            return [MSGraphGiphyRatingType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphGiphyRatingTypeModerate:
            return @"moderate";
        case MSGraphGiphyRatingTypeStrict:
            return @"strict";
        case MSGraphGiphyRatingTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphGiphyRatingTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphGiphyRatingTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphGiphyRatingType)

- (MSGraphGiphyRatingType*) toMSGraphGiphyRatingType{

    if([self isEqualToString:@"moderate"])
    {
          return [MSGraphGiphyRatingType moderate];
    }
    else if([self isEqualToString:@"strict"])
    {
          return [MSGraphGiphyRatingType strict];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphGiphyRatingType unknownFutureValue];
    }
    else {
        return [MSGraphGiphyRatingType UnknownEnumValue];
    }
}

@end
