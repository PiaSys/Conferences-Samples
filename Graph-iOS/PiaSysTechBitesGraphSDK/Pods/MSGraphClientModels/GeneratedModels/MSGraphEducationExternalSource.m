// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationExternalSource.h"

@interface MSGraphEducationExternalSource () {
    MSGraphEducationExternalSourceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationExternalSourceValue enumValue;
@end

@implementation MSGraphEducationExternalSource

+ (MSGraphEducationExternalSource*) sis {
    static MSGraphEducationExternalSource *_sis;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sis = [[MSGraphEducationExternalSource alloc] init];
        _sis.enumValue = MSGraphEducationExternalSourceSis;
    });
    return _sis;
}
+ (MSGraphEducationExternalSource*) manual {
    static MSGraphEducationExternalSource *_manual;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manual = [[MSGraphEducationExternalSource alloc] init];
        _manual.enumValue = MSGraphEducationExternalSourceManual;
    });
    return _manual;
}
+ (MSGraphEducationExternalSource*) unknownFutureValue {
    static MSGraphEducationExternalSource *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationExternalSource alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationExternalSourceUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEducationExternalSource*) UnknownEnumValue {
    static MSGraphEducationExternalSource *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationExternalSource alloc] init];
        _unknownValue.enumValue = MSGraphEducationExternalSourceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationExternalSource*) educationExternalSourceWithEnumValue:(MSGraphEducationExternalSourceValue)val {

    switch(val)
    {
        case MSGraphEducationExternalSourceSis:
            return [MSGraphEducationExternalSource sis];
        case MSGraphEducationExternalSourceManual:
            return [MSGraphEducationExternalSource manual];
        case MSGraphEducationExternalSourceUnknownFutureValue:
            return [MSGraphEducationExternalSource unknownFutureValue];
        case MSGraphEducationExternalSourceEndOfEnum:
        default:
            return [MSGraphEducationExternalSource UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationExternalSourceSis:
            return @"sis";
        case MSGraphEducationExternalSourceManual:
            return @"manual";
        case MSGraphEducationExternalSourceUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationExternalSourceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationExternalSourceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationExternalSource)

- (MSGraphEducationExternalSource*) toMSGraphEducationExternalSource{

    if([self isEqualToString:@"sis"])
    {
          return [MSGraphEducationExternalSource sis];
    }
    else if([self isEqualToString:@"manual"])
    {
          return [MSGraphEducationExternalSource manual];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationExternalSource unknownFutureValue];
    }
    else {
        return [MSGraphEducationExternalSource UnknownEnumValue];
    }
}

@end
