// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBitLockerEncryptionMethod.h"

@interface MSGraphBitLockerEncryptionMethod () {
    MSGraphBitLockerEncryptionMethodValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBitLockerEncryptionMethodValue enumValue;
@end

@implementation MSGraphBitLockerEncryptionMethod

+ (MSGraphBitLockerEncryptionMethod*) aesCbc128 {
    static MSGraphBitLockerEncryptionMethod *_aesCbc128;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aesCbc128 = [[MSGraphBitLockerEncryptionMethod alloc] init];
        _aesCbc128.enumValue = MSGraphBitLockerEncryptionMethodAesCbc128;
    });
    return _aesCbc128;
}
+ (MSGraphBitLockerEncryptionMethod*) aesCbc256 {
    static MSGraphBitLockerEncryptionMethod *_aesCbc256;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aesCbc256 = [[MSGraphBitLockerEncryptionMethod alloc] init];
        _aesCbc256.enumValue = MSGraphBitLockerEncryptionMethodAesCbc256;
    });
    return _aesCbc256;
}
+ (MSGraphBitLockerEncryptionMethod*) xtsAes128 {
    static MSGraphBitLockerEncryptionMethod *_xtsAes128;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _xtsAes128 = [[MSGraphBitLockerEncryptionMethod alloc] init];
        _xtsAes128.enumValue = MSGraphBitLockerEncryptionMethodXtsAes128;
    });
    return _xtsAes128;
}
+ (MSGraphBitLockerEncryptionMethod*) xtsAes256 {
    static MSGraphBitLockerEncryptionMethod *_xtsAes256;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _xtsAes256 = [[MSGraphBitLockerEncryptionMethod alloc] init];
        _xtsAes256.enumValue = MSGraphBitLockerEncryptionMethodXtsAes256;
    });
    return _xtsAes256;
}

+ (MSGraphBitLockerEncryptionMethod*) UnknownEnumValue {
    static MSGraphBitLockerEncryptionMethod *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBitLockerEncryptionMethod alloc] init];
        _unknownValue.enumValue = MSGraphBitLockerEncryptionMethodEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBitLockerEncryptionMethod*) bitLockerEncryptionMethodWithEnumValue:(MSGraphBitLockerEncryptionMethodValue)val {

    switch(val)
    {
        case MSGraphBitLockerEncryptionMethodAesCbc128:
            return [MSGraphBitLockerEncryptionMethod aesCbc128];
        case MSGraphBitLockerEncryptionMethodAesCbc256:
            return [MSGraphBitLockerEncryptionMethod aesCbc256];
        case MSGraphBitLockerEncryptionMethodXtsAes128:
            return [MSGraphBitLockerEncryptionMethod xtsAes128];
        case MSGraphBitLockerEncryptionMethodXtsAes256:
            return [MSGraphBitLockerEncryptionMethod xtsAes256];
        case MSGraphBitLockerEncryptionMethodEndOfEnum:
        default:
            return [MSGraphBitLockerEncryptionMethod UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBitLockerEncryptionMethodAesCbc128:
            return @"aesCbc128";
        case MSGraphBitLockerEncryptionMethodAesCbc256:
            return @"aesCbc256";
        case MSGraphBitLockerEncryptionMethodXtsAes128:
            return @"xtsAes128";
        case MSGraphBitLockerEncryptionMethodXtsAes256:
            return @"xtsAes256";
        case MSGraphBitLockerEncryptionMethodEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBitLockerEncryptionMethodValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBitLockerEncryptionMethod)

- (MSGraphBitLockerEncryptionMethod*) toMSGraphBitLockerEncryptionMethod{

    if([self isEqualToString:@"aesCbc128"])
    {
          return [MSGraphBitLockerEncryptionMethod aesCbc128];
    }
    else if([self isEqualToString:@"aesCbc256"])
    {
          return [MSGraphBitLockerEncryptionMethod aesCbc256];
    }
    else if([self isEqualToString:@"xtsAes128"])
    {
          return [MSGraphBitLockerEncryptionMethod xtsAes128];
    }
    else if([self isEqualToString:@"xtsAes256"])
    {
          return [MSGraphBitLockerEncryptionMethod xtsAes256];
    }
    else {
        return [MSGraphBitLockerEncryptionMethod UnknownEnumValue];
    }
}

@end
