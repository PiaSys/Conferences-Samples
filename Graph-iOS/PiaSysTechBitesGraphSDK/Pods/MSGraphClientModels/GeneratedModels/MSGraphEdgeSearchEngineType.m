// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdgeSearchEngineType.h"

@interface MSGraphEdgeSearchEngineType () {
    MSGraphEdgeSearchEngineTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdgeSearchEngineTypeValue enumValue;
@end

@implementation MSGraphEdgeSearchEngineType

+ (MSGraphEdgeSearchEngineType*) default {
    static MSGraphEdgeSearchEngineType *_default;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _default = [[MSGraphEdgeSearchEngineType alloc] init];
        _default.enumValue = MSGraphEdgeSearchEngineTypeDefault;
    });
    return _default;
}
+ (MSGraphEdgeSearchEngineType*) bing {
    static MSGraphEdgeSearchEngineType *_bing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bing = [[MSGraphEdgeSearchEngineType alloc] init];
        _bing.enumValue = MSGraphEdgeSearchEngineTypeBing;
    });
    return _bing;
}

+ (MSGraphEdgeSearchEngineType*) UnknownEnumValue {
    static MSGraphEdgeSearchEngineType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdgeSearchEngineType alloc] init];
        _unknownValue.enumValue = MSGraphEdgeSearchEngineTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdgeSearchEngineType*) edgeSearchEngineTypeWithEnumValue:(MSGraphEdgeSearchEngineTypeValue)val {

    switch(val)
    {
        case MSGraphEdgeSearchEngineTypeDefault:
            return [MSGraphEdgeSearchEngineType default];
        case MSGraphEdgeSearchEngineTypeBing:
            return [MSGraphEdgeSearchEngineType bing];
        case MSGraphEdgeSearchEngineTypeEndOfEnum:
        default:
            return [MSGraphEdgeSearchEngineType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdgeSearchEngineTypeDefault:
            return @"default";
        case MSGraphEdgeSearchEngineTypeBing:
            return @"bing";
        case MSGraphEdgeSearchEngineTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdgeSearchEngineTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdgeSearchEngineType)

- (MSGraphEdgeSearchEngineType*) toMSGraphEdgeSearchEngineType{

    if([self isEqualToString:@"default"])
    {
          return [MSGraphEdgeSearchEngineType default];
    }
    else if([self isEqualToString:@"bing"])
    {
          return [MSGraphEdgeSearchEngineType bing];
    }
    else {
        return [MSGraphEdgeSearchEngineType UnknownEnumValue];
    }
}

@end
