// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLocationUniqueIdType.h"

@interface MSGraphLocationUniqueIdType () {
    MSGraphLocationUniqueIdTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphLocationUniqueIdTypeValue enumValue;
@end

@implementation MSGraphLocationUniqueIdType

+ (MSGraphLocationUniqueIdType*) unknown {
    static MSGraphLocationUniqueIdType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphLocationUniqueIdType alloc] init];
        _unknown.enumValue = MSGraphLocationUniqueIdTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphLocationUniqueIdType*) locationStore {
    static MSGraphLocationUniqueIdType *_locationStore;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _locationStore = [[MSGraphLocationUniqueIdType alloc] init];
        _locationStore.enumValue = MSGraphLocationUniqueIdTypeLocationStore;
    });
    return _locationStore;
}
+ (MSGraphLocationUniqueIdType*) directory {
    static MSGraphLocationUniqueIdType *_directory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _directory = [[MSGraphLocationUniqueIdType alloc] init];
        _directory.enumValue = MSGraphLocationUniqueIdTypeDirectory;
    });
    return _directory;
}
+ (MSGraphLocationUniqueIdType*) private {
    static MSGraphLocationUniqueIdType *_private;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _private = [[MSGraphLocationUniqueIdType alloc] init];
        _private.enumValue = MSGraphLocationUniqueIdTypePrivate;
    });
    return _private;
}
+ (MSGraphLocationUniqueIdType*) bing {
    static MSGraphLocationUniqueIdType *_bing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bing = [[MSGraphLocationUniqueIdType alloc] init];
        _bing.enumValue = MSGraphLocationUniqueIdTypeBing;
    });
    return _bing;
}

+ (MSGraphLocationUniqueIdType*) UnknownEnumValue {
    static MSGraphLocationUniqueIdType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphLocationUniqueIdType alloc] init];
        _unknownValue.enumValue = MSGraphLocationUniqueIdTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphLocationUniqueIdType*) locationUniqueIdTypeWithEnumValue:(MSGraphLocationUniqueIdTypeValue)val {

    switch(val)
    {
        case MSGraphLocationUniqueIdTypeUnknown:
            return [MSGraphLocationUniqueIdType unknown];
        case MSGraphLocationUniqueIdTypeLocationStore:
            return [MSGraphLocationUniqueIdType locationStore];
        case MSGraphLocationUniqueIdTypeDirectory:
            return [MSGraphLocationUniqueIdType directory];
        case MSGraphLocationUniqueIdTypePrivate:
            return [MSGraphLocationUniqueIdType private];
        case MSGraphLocationUniqueIdTypeBing:
            return [MSGraphLocationUniqueIdType bing];
        case MSGraphLocationUniqueIdTypeEndOfEnum:
        default:
            return [MSGraphLocationUniqueIdType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphLocationUniqueIdTypeUnknown:
            return @"unknown";
        case MSGraphLocationUniqueIdTypeLocationStore:
            return @"locationStore";
        case MSGraphLocationUniqueIdTypeDirectory:
            return @"directory";
        case MSGraphLocationUniqueIdTypePrivate:
            return @"private";
        case MSGraphLocationUniqueIdTypeBing:
            return @"bing";
        case MSGraphLocationUniqueIdTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphLocationUniqueIdTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphLocationUniqueIdType)

- (MSGraphLocationUniqueIdType*) toMSGraphLocationUniqueIdType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphLocationUniqueIdType unknown];
    }
    else if([self isEqualToString:@"locationStore"])
    {
          return [MSGraphLocationUniqueIdType locationStore];
    }
    else if([self isEqualToString:@"directory"])
    {
          return [MSGraphLocationUniqueIdType directory];
    }
    else if([self isEqualToString:@"private"])
    {
          return [MSGraphLocationUniqueIdType private];
    }
    else if([self isEqualToString:@"bing"])
    {
          return [MSGraphLocationUniqueIdType bing];
    }
    else {
        return [MSGraphLocationUniqueIdType UnknownEnumValue];
    }
}

@end
