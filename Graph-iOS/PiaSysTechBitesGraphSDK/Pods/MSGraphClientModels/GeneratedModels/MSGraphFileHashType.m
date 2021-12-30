// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFileHashType.h"

@interface MSGraphFileHashType () {
    MSGraphFileHashTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFileHashTypeValue enumValue;
@end

@implementation MSGraphFileHashType

+ (MSGraphFileHashType*) unknown {
    static MSGraphFileHashType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphFileHashType alloc] init];
        _unknown.enumValue = MSGraphFileHashTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphFileHashType*) sha1 {
    static MSGraphFileHashType *_sha1;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sha1 = [[MSGraphFileHashType alloc] init];
        _sha1.enumValue = MSGraphFileHashTypeSha1;
    });
    return _sha1;
}
+ (MSGraphFileHashType*) sha256 {
    static MSGraphFileHashType *_sha256;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sha256 = [[MSGraphFileHashType alloc] init];
        _sha256.enumValue = MSGraphFileHashTypeSha256;
    });
    return _sha256;
}
+ (MSGraphFileHashType*) md5 {
    static MSGraphFileHashType *_md5;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _md5 = [[MSGraphFileHashType alloc] init];
        _md5.enumValue = MSGraphFileHashTypeMd5;
    });
    return _md5;
}
+ (MSGraphFileHashType*) authenticodeHash256 {
    static MSGraphFileHashType *_authenticodeHash256;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _authenticodeHash256 = [[MSGraphFileHashType alloc] init];
        _authenticodeHash256.enumValue = MSGraphFileHashTypeAuthenticodeHash256;
    });
    return _authenticodeHash256;
}
+ (MSGraphFileHashType*) lsHash {
    static MSGraphFileHashType *_lsHash;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lsHash = [[MSGraphFileHashType alloc] init];
        _lsHash.enumValue = MSGraphFileHashTypeLsHash;
    });
    return _lsHash;
}
+ (MSGraphFileHashType*) ctph {
    static MSGraphFileHashType *_ctph;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ctph = [[MSGraphFileHashType alloc] init];
        _ctph.enumValue = MSGraphFileHashTypeCtph;
    });
    return _ctph;
}
+ (MSGraphFileHashType*) unknownFutureValue {
    static MSGraphFileHashType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphFileHashType alloc] init];
        _unknownFutureValue.enumValue = MSGraphFileHashTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphFileHashType*) UnknownEnumValue {
    static MSGraphFileHashType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFileHashType alloc] init];
        _unknownValue.enumValue = MSGraphFileHashTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFileHashType*) fileHashTypeWithEnumValue:(MSGraphFileHashTypeValue)val {

    switch(val)
    {
        case MSGraphFileHashTypeUnknown:
            return [MSGraphFileHashType unknown];
        case MSGraphFileHashTypeSha1:
            return [MSGraphFileHashType sha1];
        case MSGraphFileHashTypeSha256:
            return [MSGraphFileHashType sha256];
        case MSGraphFileHashTypeMd5:
            return [MSGraphFileHashType md5];
        case MSGraphFileHashTypeAuthenticodeHash256:
            return [MSGraphFileHashType authenticodeHash256];
        case MSGraphFileHashTypeLsHash:
            return [MSGraphFileHashType lsHash];
        case MSGraphFileHashTypeCtph:
            return [MSGraphFileHashType ctph];
        case MSGraphFileHashTypeUnknownFutureValue:
            return [MSGraphFileHashType unknownFutureValue];
        case MSGraphFileHashTypeEndOfEnum:
        default:
            return [MSGraphFileHashType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFileHashTypeUnknown:
            return @"unknown";
        case MSGraphFileHashTypeSha1:
            return @"sha1";
        case MSGraphFileHashTypeSha256:
            return @"sha256";
        case MSGraphFileHashTypeMd5:
            return @"md5";
        case MSGraphFileHashTypeAuthenticodeHash256:
            return @"authenticodeHash256";
        case MSGraphFileHashTypeLsHash:
            return @"lsHash";
        case MSGraphFileHashTypeCtph:
            return @"ctph";
        case MSGraphFileHashTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphFileHashTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFileHashTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFileHashType)

- (MSGraphFileHashType*) toMSGraphFileHashType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphFileHashType unknown];
    }
    else if([self isEqualToString:@"sha1"])
    {
          return [MSGraphFileHashType sha1];
    }
    else if([self isEqualToString:@"sha256"])
    {
          return [MSGraphFileHashType sha256];
    }
    else if([self isEqualToString:@"md5"])
    {
          return [MSGraphFileHashType md5];
    }
    else if([self isEqualToString:@"authenticodeHash256"])
    {
          return [MSGraphFileHashType authenticodeHash256];
    }
    else if([self isEqualToString:@"lsHash"])
    {
          return [MSGraphFileHashType lsHash];
    }
    else if([self isEqualToString:@"ctph"])
    {
          return [MSGraphFileHashType ctph];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphFileHashType unknownFutureValue];
    }
    else {
        return [MSGraphFileHashType UnknownEnumValue];
    }
}

@end
