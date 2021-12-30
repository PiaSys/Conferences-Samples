// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEventType.h"

@interface MSGraphEventType () {
    MSGraphEventTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEventTypeValue enumValue;
@end

@implementation MSGraphEventType

+ (MSGraphEventType*) singleInstance {
    static MSGraphEventType *_singleInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singleInstance = [[MSGraphEventType alloc] init];
        _singleInstance.enumValue = MSGraphEventTypeSingleInstance;
    });
    return _singleInstance;
}
+ (MSGraphEventType*) occurrence {
    static MSGraphEventType *_occurrence;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _occurrence = [[MSGraphEventType alloc] init];
        _occurrence.enumValue = MSGraphEventTypeOccurrence;
    });
    return _occurrence;
}
+ (MSGraphEventType*) exception {
    static MSGraphEventType *_exception;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exception = [[MSGraphEventType alloc] init];
        _exception.enumValue = MSGraphEventTypeException;
    });
    return _exception;
}
+ (MSGraphEventType*) seriesMaster {
    static MSGraphEventType *_seriesMaster;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _seriesMaster = [[MSGraphEventType alloc] init];
        _seriesMaster.enumValue = MSGraphEventTypeSeriesMaster;
    });
    return _seriesMaster;
}

+ (MSGraphEventType*) UnknownEnumValue {
    static MSGraphEventType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEventType alloc] init];
        _unknownValue.enumValue = MSGraphEventTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEventType*) eventTypeWithEnumValue:(MSGraphEventTypeValue)val {

    switch(val)
    {
        case MSGraphEventTypeSingleInstance:
            return [MSGraphEventType singleInstance];
        case MSGraphEventTypeOccurrence:
            return [MSGraphEventType occurrence];
        case MSGraphEventTypeException:
            return [MSGraphEventType exception];
        case MSGraphEventTypeSeriesMaster:
            return [MSGraphEventType seriesMaster];
        case MSGraphEventTypeEndOfEnum:
        default:
            return [MSGraphEventType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEventTypeSingleInstance:
            return @"singleInstance";
        case MSGraphEventTypeOccurrence:
            return @"occurrence";
        case MSGraphEventTypeException:
            return @"exception";
        case MSGraphEventTypeSeriesMaster:
            return @"seriesMaster";
        case MSGraphEventTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEventTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEventType)

- (MSGraphEventType*) toMSGraphEventType{

    if([self isEqualToString:@"singleInstance"])
    {
          return [MSGraphEventType singleInstance];
    }
    else if([self isEqualToString:@"occurrence"])
    {
          return [MSGraphEventType occurrence];
    }
    else if([self isEqualToString:@"exception"])
    {
          return [MSGraphEventType exception];
    }
    else if([self isEqualToString:@"seriesMaster"])
    {
          return [MSGraphEventType seriesMaster];
    }
    else {
        return [MSGraphEventType UnknownEnumValue];
    }
}

@end
