// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphApplicationType.h"

@interface MSGraphApplicationType () {
    MSGraphApplicationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphApplicationTypeValue enumValue;
@end

@implementation MSGraphApplicationType

+ (MSGraphApplicationType*) universal {
    static MSGraphApplicationType *_universal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _universal = [[MSGraphApplicationType alloc] init];
        _universal.enumValue = MSGraphApplicationTypeUniversal;
    });
    return _universal;
}
+ (MSGraphApplicationType*) desktop {
    static MSGraphApplicationType *_desktop;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _desktop = [[MSGraphApplicationType alloc] init];
        _desktop.enumValue = MSGraphApplicationTypeDesktop;
    });
    return _desktop;
}

+ (MSGraphApplicationType*) UnknownEnumValue {
    static MSGraphApplicationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphApplicationType alloc] init];
        _unknownValue.enumValue = MSGraphApplicationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphApplicationType*) applicationTypeWithEnumValue:(MSGraphApplicationTypeValue)val {

    switch(val)
    {
        case MSGraphApplicationTypeUniversal:
            return [MSGraphApplicationType universal];
        case MSGraphApplicationTypeDesktop:
            return [MSGraphApplicationType desktop];
        case MSGraphApplicationTypeEndOfEnum:
        default:
            return [MSGraphApplicationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphApplicationTypeUniversal:
            return @"universal";
        case MSGraphApplicationTypeDesktop:
            return @"desktop";
        case MSGraphApplicationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphApplicationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphApplicationType)

- (MSGraphApplicationType*) toMSGraphApplicationType{

    if([self isEqualToString:@"universal"])
    {
          return [MSGraphApplicationType universal];
    }
    else if([self isEqualToString:@"desktop"])
    {
          return [MSGraphApplicationType desktop];
    }
    else {
        return [MSGraphApplicationType UnknownEnumValue];
    }
}

@end
