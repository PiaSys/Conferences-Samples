// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphApplicationGuardBlockFileTransferType.h"

@interface MSGraphApplicationGuardBlockFileTransferType () {
    MSGraphApplicationGuardBlockFileTransferTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphApplicationGuardBlockFileTransferTypeValue enumValue;
@end

@implementation MSGraphApplicationGuardBlockFileTransferType

+ (MSGraphApplicationGuardBlockFileTransferType*) notConfigured {
    static MSGraphApplicationGuardBlockFileTransferType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphApplicationGuardBlockFileTransferType alloc] init];
        _notConfigured.enumValue = MSGraphApplicationGuardBlockFileTransferTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphApplicationGuardBlockFileTransferType*) blockImageAndTextFile {
    static MSGraphApplicationGuardBlockFileTransferType *_blockImageAndTextFile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockImageAndTextFile = [[MSGraphApplicationGuardBlockFileTransferType alloc] init];
        _blockImageAndTextFile.enumValue = MSGraphApplicationGuardBlockFileTransferTypeBlockImageAndTextFile;
    });
    return _blockImageAndTextFile;
}
+ (MSGraphApplicationGuardBlockFileTransferType*) blockImageFile {
    static MSGraphApplicationGuardBlockFileTransferType *_blockImageFile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockImageFile = [[MSGraphApplicationGuardBlockFileTransferType alloc] init];
        _blockImageFile.enumValue = MSGraphApplicationGuardBlockFileTransferTypeBlockImageFile;
    });
    return _blockImageFile;
}
+ (MSGraphApplicationGuardBlockFileTransferType*) blockNone {
    static MSGraphApplicationGuardBlockFileTransferType *_blockNone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockNone = [[MSGraphApplicationGuardBlockFileTransferType alloc] init];
        _blockNone.enumValue = MSGraphApplicationGuardBlockFileTransferTypeBlockNone;
    });
    return _blockNone;
}
+ (MSGraphApplicationGuardBlockFileTransferType*) blockTextFile {
    static MSGraphApplicationGuardBlockFileTransferType *_blockTextFile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockTextFile = [[MSGraphApplicationGuardBlockFileTransferType alloc] init];
        _blockTextFile.enumValue = MSGraphApplicationGuardBlockFileTransferTypeBlockTextFile;
    });
    return _blockTextFile;
}

+ (MSGraphApplicationGuardBlockFileTransferType*) UnknownEnumValue {
    static MSGraphApplicationGuardBlockFileTransferType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphApplicationGuardBlockFileTransferType alloc] init];
        _unknownValue.enumValue = MSGraphApplicationGuardBlockFileTransferTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphApplicationGuardBlockFileTransferType*) applicationGuardBlockFileTransferTypeWithEnumValue:(MSGraphApplicationGuardBlockFileTransferTypeValue)val {

    switch(val)
    {
        case MSGraphApplicationGuardBlockFileTransferTypeNotConfigured:
            return [MSGraphApplicationGuardBlockFileTransferType notConfigured];
        case MSGraphApplicationGuardBlockFileTransferTypeBlockImageAndTextFile:
            return [MSGraphApplicationGuardBlockFileTransferType blockImageAndTextFile];
        case MSGraphApplicationGuardBlockFileTransferTypeBlockImageFile:
            return [MSGraphApplicationGuardBlockFileTransferType blockImageFile];
        case MSGraphApplicationGuardBlockFileTransferTypeBlockNone:
            return [MSGraphApplicationGuardBlockFileTransferType blockNone];
        case MSGraphApplicationGuardBlockFileTransferTypeBlockTextFile:
            return [MSGraphApplicationGuardBlockFileTransferType blockTextFile];
        case MSGraphApplicationGuardBlockFileTransferTypeEndOfEnum:
        default:
            return [MSGraphApplicationGuardBlockFileTransferType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphApplicationGuardBlockFileTransferTypeNotConfigured:
            return @"notConfigured";
        case MSGraphApplicationGuardBlockFileTransferTypeBlockImageAndTextFile:
            return @"blockImageAndTextFile";
        case MSGraphApplicationGuardBlockFileTransferTypeBlockImageFile:
            return @"blockImageFile";
        case MSGraphApplicationGuardBlockFileTransferTypeBlockNone:
            return @"blockNone";
        case MSGraphApplicationGuardBlockFileTransferTypeBlockTextFile:
            return @"blockTextFile";
        case MSGraphApplicationGuardBlockFileTransferTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphApplicationGuardBlockFileTransferTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphApplicationGuardBlockFileTransferType)

- (MSGraphApplicationGuardBlockFileTransferType*) toMSGraphApplicationGuardBlockFileTransferType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphApplicationGuardBlockFileTransferType notConfigured];
    }
    else if([self isEqualToString:@"blockImageAndTextFile"])
    {
          return [MSGraphApplicationGuardBlockFileTransferType blockImageAndTextFile];
    }
    else if([self isEqualToString:@"blockImageFile"])
    {
          return [MSGraphApplicationGuardBlockFileTransferType blockImageFile];
    }
    else if([self isEqualToString:@"blockNone"])
    {
          return [MSGraphApplicationGuardBlockFileTransferType blockNone];
    }
    else if([self isEqualToString:@"blockTextFile"])
    {
          return [MSGraphApplicationGuardBlockFileTransferType blockTextFile];
    }
    else {
        return [MSGraphApplicationGuardBlockFileTransferType UnknownEnumValue];
    }
}

@end
