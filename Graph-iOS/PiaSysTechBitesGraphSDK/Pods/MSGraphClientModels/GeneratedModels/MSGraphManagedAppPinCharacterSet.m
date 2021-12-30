// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppPinCharacterSet.h"

@interface MSGraphManagedAppPinCharacterSet () {
    MSGraphManagedAppPinCharacterSetValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppPinCharacterSetValue enumValue;
@end

@implementation MSGraphManagedAppPinCharacterSet

+ (MSGraphManagedAppPinCharacterSet*) numeric {
    static MSGraphManagedAppPinCharacterSet *_numeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numeric = [[MSGraphManagedAppPinCharacterSet alloc] init];
        _numeric.enumValue = MSGraphManagedAppPinCharacterSetNumeric;
    });
    return _numeric;
}
+ (MSGraphManagedAppPinCharacterSet*) alphanumericAndSymbol {
    static MSGraphManagedAppPinCharacterSet *_alphanumericAndSymbol;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alphanumericAndSymbol = [[MSGraphManagedAppPinCharacterSet alloc] init];
        _alphanumericAndSymbol.enumValue = MSGraphManagedAppPinCharacterSetAlphanumericAndSymbol;
    });
    return _alphanumericAndSymbol;
}

+ (MSGraphManagedAppPinCharacterSet*) UnknownEnumValue {
    static MSGraphManagedAppPinCharacterSet *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppPinCharacterSet alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppPinCharacterSetEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppPinCharacterSet*) managedAppPinCharacterSetWithEnumValue:(MSGraphManagedAppPinCharacterSetValue)val {

    switch(val)
    {
        case MSGraphManagedAppPinCharacterSetNumeric:
            return [MSGraphManagedAppPinCharacterSet numeric];
        case MSGraphManagedAppPinCharacterSetAlphanumericAndSymbol:
            return [MSGraphManagedAppPinCharacterSet alphanumericAndSymbol];
        case MSGraphManagedAppPinCharacterSetEndOfEnum:
        default:
            return [MSGraphManagedAppPinCharacterSet UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppPinCharacterSetNumeric:
            return @"numeric";
        case MSGraphManagedAppPinCharacterSetAlphanumericAndSymbol:
            return @"alphanumericAndSymbol";
        case MSGraphManagedAppPinCharacterSetEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppPinCharacterSetValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppPinCharacterSet)

- (MSGraphManagedAppPinCharacterSet*) toMSGraphManagedAppPinCharacterSet{

    if([self isEqualToString:@"numeric"])
    {
          return [MSGraphManagedAppPinCharacterSet numeric];
    }
    else if([self isEqualToString:@"alphanumericAndSymbol"])
    {
          return [MSGraphManagedAppPinCharacterSet alphanumericAndSymbol];
    }
    else {
        return [MSGraphManagedAppPinCharacterSet UnknownEnumValue];
    }
}

@end
