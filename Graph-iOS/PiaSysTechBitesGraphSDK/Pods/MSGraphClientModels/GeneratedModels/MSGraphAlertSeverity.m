// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAlertSeverity.h"

@interface MSGraphAlertSeverity () {
    MSGraphAlertSeverityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAlertSeverityValue enumValue;
@end

@implementation MSGraphAlertSeverity

+ (MSGraphAlertSeverity*) unknown {
    static MSGraphAlertSeverity *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphAlertSeverity alloc] init];
        _unknown.enumValue = MSGraphAlertSeverityUnknown;
    });
    return _unknown;
}
+ (MSGraphAlertSeverity*) informational {
    static MSGraphAlertSeverity *_informational;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _informational = [[MSGraphAlertSeverity alloc] init];
        _informational.enumValue = MSGraphAlertSeverityInformational;
    });
    return _informational;
}
+ (MSGraphAlertSeverity*) low {
    static MSGraphAlertSeverity *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphAlertSeverity alloc] init];
        _low.enumValue = MSGraphAlertSeverityLow;
    });
    return _low;
}
+ (MSGraphAlertSeverity*) medium {
    static MSGraphAlertSeverity *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphAlertSeverity alloc] init];
        _medium.enumValue = MSGraphAlertSeverityMedium;
    });
    return _medium;
}
+ (MSGraphAlertSeverity*) high {
    static MSGraphAlertSeverity *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphAlertSeverity alloc] init];
        _high.enumValue = MSGraphAlertSeverityHigh;
    });
    return _high;
}
+ (MSGraphAlertSeverity*) unknownFutureValue {
    static MSGraphAlertSeverity *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAlertSeverity alloc] init];
        _unknownFutureValue.enumValue = MSGraphAlertSeverityUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAlertSeverity*) UnknownEnumValue {
    static MSGraphAlertSeverity *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAlertSeverity alloc] init];
        _unknownValue.enumValue = MSGraphAlertSeverityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAlertSeverity*) alertSeverityWithEnumValue:(MSGraphAlertSeverityValue)val {

    switch(val)
    {
        case MSGraphAlertSeverityUnknown:
            return [MSGraphAlertSeverity unknown];
        case MSGraphAlertSeverityInformational:
            return [MSGraphAlertSeverity informational];
        case MSGraphAlertSeverityLow:
            return [MSGraphAlertSeverity low];
        case MSGraphAlertSeverityMedium:
            return [MSGraphAlertSeverity medium];
        case MSGraphAlertSeverityHigh:
            return [MSGraphAlertSeverity high];
        case MSGraphAlertSeverityUnknownFutureValue:
            return [MSGraphAlertSeverity unknownFutureValue];
        case MSGraphAlertSeverityEndOfEnum:
        default:
            return [MSGraphAlertSeverity UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAlertSeverityUnknown:
            return @"unknown";
        case MSGraphAlertSeverityInformational:
            return @"informational";
        case MSGraphAlertSeverityLow:
            return @"low";
        case MSGraphAlertSeverityMedium:
            return @"medium";
        case MSGraphAlertSeverityHigh:
            return @"high";
        case MSGraphAlertSeverityUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAlertSeverityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAlertSeverityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAlertSeverity)

- (MSGraphAlertSeverity*) toMSGraphAlertSeverity{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphAlertSeverity unknown];
    }
    else if([self isEqualToString:@"informational"])
    {
          return [MSGraphAlertSeverity informational];
    }
    else if([self isEqualToString:@"low"])
    {
          return [MSGraphAlertSeverity low];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphAlertSeverity medium];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphAlertSeverity high];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAlertSeverity unknownFutureValue];
    }
    else {
        return [MSGraphAlertSeverity UnknownEnumValue];
    }
}

@end
