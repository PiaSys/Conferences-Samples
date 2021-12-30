// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRegistryValueType.h"

@interface MSGraphRegistryValueType () {
    MSGraphRegistryValueTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRegistryValueTypeValue enumValue;
@end

@implementation MSGraphRegistryValueType

+ (MSGraphRegistryValueType*) unknown {
    static MSGraphRegistryValueType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphRegistryValueType alloc] init];
        _unknown.enumValue = MSGraphRegistryValueTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphRegistryValueType*) binary {
    static MSGraphRegistryValueType *_binary;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _binary = [[MSGraphRegistryValueType alloc] init];
        _binary.enumValue = MSGraphRegistryValueTypeBinary;
    });
    return _binary;
}
+ (MSGraphRegistryValueType*) dword {
    static MSGraphRegistryValueType *_dword;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dword = [[MSGraphRegistryValueType alloc] init];
        _dword.enumValue = MSGraphRegistryValueTypeDword;
    });
    return _dword;
}
+ (MSGraphRegistryValueType*) dwordLittleEndian {
    static MSGraphRegistryValueType *_dwordLittleEndian;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dwordLittleEndian = [[MSGraphRegistryValueType alloc] init];
        _dwordLittleEndian.enumValue = MSGraphRegistryValueTypeDwordLittleEndian;
    });
    return _dwordLittleEndian;
}
+ (MSGraphRegistryValueType*) dwordBigEndian {
    static MSGraphRegistryValueType *_dwordBigEndian;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dwordBigEndian = [[MSGraphRegistryValueType alloc] init];
        _dwordBigEndian.enumValue = MSGraphRegistryValueTypeDwordBigEndian;
    });
    return _dwordBigEndian;
}
+ (MSGraphRegistryValueType*) expandSz {
    static MSGraphRegistryValueType *_expandSz;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _expandSz = [[MSGraphRegistryValueType alloc] init];
        _expandSz.enumValue = MSGraphRegistryValueTypeExpandSz;
    });
    return _expandSz;
}
+ (MSGraphRegistryValueType*) link {
    static MSGraphRegistryValueType *_link;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _link = [[MSGraphRegistryValueType alloc] init];
        _link.enumValue = MSGraphRegistryValueTypeLink;
    });
    return _link;
}
+ (MSGraphRegistryValueType*) multiSz {
    static MSGraphRegistryValueType *_multiSz;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _multiSz = [[MSGraphRegistryValueType alloc] init];
        _multiSz.enumValue = MSGraphRegistryValueTypeMultiSz;
    });
    return _multiSz;
}
+ (MSGraphRegistryValueType*) none {
    static MSGraphRegistryValueType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphRegistryValueType alloc] init];
        _none.enumValue = MSGraphRegistryValueTypeNone;
    });
    return _none;
}
+ (MSGraphRegistryValueType*) qword {
    static MSGraphRegistryValueType *_qword;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _qword = [[MSGraphRegistryValueType alloc] init];
        _qword.enumValue = MSGraphRegistryValueTypeQword;
    });
    return _qword;
}
+ (MSGraphRegistryValueType*) qwordlittleEndian {
    static MSGraphRegistryValueType *_qwordlittleEndian;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _qwordlittleEndian = [[MSGraphRegistryValueType alloc] init];
        _qwordlittleEndian.enumValue = MSGraphRegistryValueTypeQwordlittleEndian;
    });
    return _qwordlittleEndian;
}
+ (MSGraphRegistryValueType*) sz {
    static MSGraphRegistryValueType *_sz;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sz = [[MSGraphRegistryValueType alloc] init];
        _sz.enumValue = MSGraphRegistryValueTypeSz;
    });
    return _sz;
}
+ (MSGraphRegistryValueType*) unknownFutureValue {
    static MSGraphRegistryValueType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRegistryValueType alloc] init];
        _unknownFutureValue.enumValue = MSGraphRegistryValueTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRegistryValueType*) UnknownEnumValue {
    static MSGraphRegistryValueType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRegistryValueType alloc] init];
        _unknownValue.enumValue = MSGraphRegistryValueTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRegistryValueType*) registryValueTypeWithEnumValue:(MSGraphRegistryValueTypeValue)val {

    switch(val)
    {
        case MSGraphRegistryValueTypeUnknown:
            return [MSGraphRegistryValueType unknown];
        case MSGraphRegistryValueTypeBinary:
            return [MSGraphRegistryValueType binary];
        case MSGraphRegistryValueTypeDword:
            return [MSGraphRegistryValueType dword];
        case MSGraphRegistryValueTypeDwordLittleEndian:
            return [MSGraphRegistryValueType dwordLittleEndian];
        case MSGraphRegistryValueTypeDwordBigEndian:
            return [MSGraphRegistryValueType dwordBigEndian];
        case MSGraphRegistryValueTypeExpandSz:
            return [MSGraphRegistryValueType expandSz];
        case MSGraphRegistryValueTypeLink:
            return [MSGraphRegistryValueType link];
        case MSGraphRegistryValueTypeMultiSz:
            return [MSGraphRegistryValueType multiSz];
        case MSGraphRegistryValueTypeNone:
            return [MSGraphRegistryValueType none];
        case MSGraphRegistryValueTypeQword:
            return [MSGraphRegistryValueType qword];
        case MSGraphRegistryValueTypeQwordlittleEndian:
            return [MSGraphRegistryValueType qwordlittleEndian];
        case MSGraphRegistryValueTypeSz:
            return [MSGraphRegistryValueType sz];
        case MSGraphRegistryValueTypeUnknownFutureValue:
            return [MSGraphRegistryValueType unknownFutureValue];
        case MSGraphRegistryValueTypeEndOfEnum:
        default:
            return [MSGraphRegistryValueType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRegistryValueTypeUnknown:
            return @"unknown";
        case MSGraphRegistryValueTypeBinary:
            return @"binary";
        case MSGraphRegistryValueTypeDword:
            return @"dword";
        case MSGraphRegistryValueTypeDwordLittleEndian:
            return @"dwordLittleEndian";
        case MSGraphRegistryValueTypeDwordBigEndian:
            return @"dwordBigEndian";
        case MSGraphRegistryValueTypeExpandSz:
            return @"expandSz";
        case MSGraphRegistryValueTypeLink:
            return @"link";
        case MSGraphRegistryValueTypeMultiSz:
            return @"multiSz";
        case MSGraphRegistryValueTypeNone:
            return @"none";
        case MSGraphRegistryValueTypeQword:
            return @"qword";
        case MSGraphRegistryValueTypeQwordlittleEndian:
            return @"qwordlittleEndian";
        case MSGraphRegistryValueTypeSz:
            return @"sz";
        case MSGraphRegistryValueTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRegistryValueTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRegistryValueTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRegistryValueType)

- (MSGraphRegistryValueType*) toMSGraphRegistryValueType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphRegistryValueType unknown];
    }
    else if([self isEqualToString:@"binary"])
    {
          return [MSGraphRegistryValueType binary];
    }
    else if([self isEqualToString:@"dword"])
    {
          return [MSGraphRegistryValueType dword];
    }
    else if([self isEqualToString:@"dwordLittleEndian"])
    {
          return [MSGraphRegistryValueType dwordLittleEndian];
    }
    else if([self isEqualToString:@"dwordBigEndian"])
    {
          return [MSGraphRegistryValueType dwordBigEndian];
    }
    else if([self isEqualToString:@"expandSz"])
    {
          return [MSGraphRegistryValueType expandSz];
    }
    else if([self isEqualToString:@"link"])
    {
          return [MSGraphRegistryValueType link];
    }
    else if([self isEqualToString:@"multiSz"])
    {
          return [MSGraphRegistryValueType multiSz];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphRegistryValueType none];
    }
    else if([self isEqualToString:@"qword"])
    {
          return [MSGraphRegistryValueType qword];
    }
    else if([self isEqualToString:@"qwordlittleEndian"])
    {
          return [MSGraphRegistryValueType qwordlittleEndian];
    }
    else if([self isEqualToString:@"sz"])
    {
          return [MSGraphRegistryValueType sz];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRegistryValueType unknownFutureValue];
    }
    else {
        return [MSGraphRegistryValueType UnknownEnumValue];
    }
}

@end
