// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSelectionLikelihoodInfo.h"

@interface MSGraphSelectionLikelihoodInfo () {
    MSGraphSelectionLikelihoodInfoValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSelectionLikelihoodInfoValue enumValue;
@end

@implementation MSGraphSelectionLikelihoodInfo

+ (MSGraphSelectionLikelihoodInfo*) notSpecified {
    static MSGraphSelectionLikelihoodInfo *_notSpecified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSpecified = [[MSGraphSelectionLikelihoodInfo alloc] init];
        _notSpecified.enumValue = MSGraphSelectionLikelihoodInfoNotSpecified;
    });
    return _notSpecified;
}
+ (MSGraphSelectionLikelihoodInfo*) high {
    static MSGraphSelectionLikelihoodInfo *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphSelectionLikelihoodInfo alloc] init];
        _high.enumValue = MSGraphSelectionLikelihoodInfoHigh;
    });
    return _high;
}

+ (MSGraphSelectionLikelihoodInfo*) UnknownEnumValue {
    static MSGraphSelectionLikelihoodInfo *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSelectionLikelihoodInfo alloc] init];
        _unknownValue.enumValue = MSGraphSelectionLikelihoodInfoEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSelectionLikelihoodInfo*) selectionLikelihoodInfoWithEnumValue:(MSGraphSelectionLikelihoodInfoValue)val {

    switch(val)
    {
        case MSGraphSelectionLikelihoodInfoNotSpecified:
            return [MSGraphSelectionLikelihoodInfo notSpecified];
        case MSGraphSelectionLikelihoodInfoHigh:
            return [MSGraphSelectionLikelihoodInfo high];
        case MSGraphSelectionLikelihoodInfoEndOfEnum:
        default:
            return [MSGraphSelectionLikelihoodInfo UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSelectionLikelihoodInfoNotSpecified:
            return @"notSpecified";
        case MSGraphSelectionLikelihoodInfoHigh:
            return @"high";
        case MSGraphSelectionLikelihoodInfoEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSelectionLikelihoodInfoValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSelectionLikelihoodInfo)

- (MSGraphSelectionLikelihoodInfo*) toMSGraphSelectionLikelihoodInfo{

    if([self isEqualToString:@"notSpecified"])
    {
          return [MSGraphSelectionLikelihoodInfo notSpecified];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphSelectionLikelihoodInfo high];
    }
    else {
        return [MSGraphSelectionLikelihoodInfo UnknownEnumValue];
    }
}

@end
