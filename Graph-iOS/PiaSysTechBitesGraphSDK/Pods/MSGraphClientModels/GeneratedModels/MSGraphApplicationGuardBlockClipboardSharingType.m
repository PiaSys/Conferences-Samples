// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphApplicationGuardBlockClipboardSharingType.h"

@interface MSGraphApplicationGuardBlockClipboardSharingType () {
    MSGraphApplicationGuardBlockClipboardSharingTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphApplicationGuardBlockClipboardSharingTypeValue enumValue;
@end

@implementation MSGraphApplicationGuardBlockClipboardSharingType

+ (MSGraphApplicationGuardBlockClipboardSharingType*) notConfigured {
    static MSGraphApplicationGuardBlockClipboardSharingType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphApplicationGuardBlockClipboardSharingType alloc] init];
        _notConfigured.enumValue = MSGraphApplicationGuardBlockClipboardSharingTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphApplicationGuardBlockClipboardSharingType*) blockBoth {
    static MSGraphApplicationGuardBlockClipboardSharingType *_blockBoth;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockBoth = [[MSGraphApplicationGuardBlockClipboardSharingType alloc] init];
        _blockBoth.enumValue = MSGraphApplicationGuardBlockClipboardSharingTypeBlockBoth;
    });
    return _blockBoth;
}
+ (MSGraphApplicationGuardBlockClipboardSharingType*) blockHostToContainer {
    static MSGraphApplicationGuardBlockClipboardSharingType *_blockHostToContainer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockHostToContainer = [[MSGraphApplicationGuardBlockClipboardSharingType alloc] init];
        _blockHostToContainer.enumValue = MSGraphApplicationGuardBlockClipboardSharingTypeBlockHostToContainer;
    });
    return _blockHostToContainer;
}
+ (MSGraphApplicationGuardBlockClipboardSharingType*) blockContainerToHost {
    static MSGraphApplicationGuardBlockClipboardSharingType *_blockContainerToHost;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockContainerToHost = [[MSGraphApplicationGuardBlockClipboardSharingType alloc] init];
        _blockContainerToHost.enumValue = MSGraphApplicationGuardBlockClipboardSharingTypeBlockContainerToHost;
    });
    return _blockContainerToHost;
}
+ (MSGraphApplicationGuardBlockClipboardSharingType*) blockNone {
    static MSGraphApplicationGuardBlockClipboardSharingType *_blockNone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockNone = [[MSGraphApplicationGuardBlockClipboardSharingType alloc] init];
        _blockNone.enumValue = MSGraphApplicationGuardBlockClipboardSharingTypeBlockNone;
    });
    return _blockNone;
}

+ (MSGraphApplicationGuardBlockClipboardSharingType*) UnknownEnumValue {
    static MSGraphApplicationGuardBlockClipboardSharingType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphApplicationGuardBlockClipboardSharingType alloc] init];
        _unknownValue.enumValue = MSGraphApplicationGuardBlockClipboardSharingTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphApplicationGuardBlockClipboardSharingType*) applicationGuardBlockClipboardSharingTypeWithEnumValue:(MSGraphApplicationGuardBlockClipboardSharingTypeValue)val {

    switch(val)
    {
        case MSGraphApplicationGuardBlockClipboardSharingTypeNotConfigured:
            return [MSGraphApplicationGuardBlockClipboardSharingType notConfigured];
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockBoth:
            return [MSGraphApplicationGuardBlockClipboardSharingType blockBoth];
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockHostToContainer:
            return [MSGraphApplicationGuardBlockClipboardSharingType blockHostToContainer];
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockContainerToHost:
            return [MSGraphApplicationGuardBlockClipboardSharingType blockContainerToHost];
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockNone:
            return [MSGraphApplicationGuardBlockClipboardSharingType blockNone];
        case MSGraphApplicationGuardBlockClipboardSharingTypeEndOfEnum:
        default:
            return [MSGraphApplicationGuardBlockClipboardSharingType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphApplicationGuardBlockClipboardSharingTypeNotConfigured:
            return @"notConfigured";
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockBoth:
            return @"blockBoth";
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockHostToContainer:
            return @"blockHostToContainer";
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockContainerToHost:
            return @"blockContainerToHost";
        case MSGraphApplicationGuardBlockClipboardSharingTypeBlockNone:
            return @"blockNone";
        case MSGraphApplicationGuardBlockClipboardSharingTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphApplicationGuardBlockClipboardSharingTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphApplicationGuardBlockClipboardSharingType)

- (MSGraphApplicationGuardBlockClipboardSharingType*) toMSGraphApplicationGuardBlockClipboardSharingType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphApplicationGuardBlockClipboardSharingType notConfigured];
    }
    else if([self isEqualToString:@"blockBoth"])
    {
          return [MSGraphApplicationGuardBlockClipboardSharingType blockBoth];
    }
    else if([self isEqualToString:@"blockHostToContainer"])
    {
          return [MSGraphApplicationGuardBlockClipboardSharingType blockHostToContainer];
    }
    else if([self isEqualToString:@"blockContainerToHost"])
    {
          return [MSGraphApplicationGuardBlockClipboardSharingType blockContainerToHost];
    }
    else if([self isEqualToString:@"blockNone"])
    {
          return [MSGraphApplicationGuardBlockClipboardSharingType blockNone];
    }
    else {
        return [MSGraphApplicationGuardBlockClipboardSharingType UnknownEnumValue];
    }
}

@end
