// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDefenderScanType.h"

@interface MSGraphDefenderScanType () {
    MSGraphDefenderScanTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDefenderScanTypeValue enumValue;
@end

@implementation MSGraphDefenderScanType

+ (MSGraphDefenderScanType*) userDefined {
    static MSGraphDefenderScanType *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphDefenderScanType alloc] init];
        _userDefined.enumValue = MSGraphDefenderScanTypeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphDefenderScanType*) disabled {
    static MSGraphDefenderScanType *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphDefenderScanType alloc] init];
        _disabled.enumValue = MSGraphDefenderScanTypeDisabled;
    });
    return _disabled;
}
+ (MSGraphDefenderScanType*) quick {
    static MSGraphDefenderScanType *_quick;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _quick = [[MSGraphDefenderScanType alloc] init];
        _quick.enumValue = MSGraphDefenderScanTypeQuick;
    });
    return _quick;
}
+ (MSGraphDefenderScanType*) full {
    static MSGraphDefenderScanType *_full;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _full = [[MSGraphDefenderScanType alloc] init];
        _full.enumValue = MSGraphDefenderScanTypeFull;
    });
    return _full;
}

+ (MSGraphDefenderScanType*) UnknownEnumValue {
    static MSGraphDefenderScanType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDefenderScanType alloc] init];
        _unknownValue.enumValue = MSGraphDefenderScanTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDefenderScanType*) defenderScanTypeWithEnumValue:(MSGraphDefenderScanTypeValue)val {

    switch(val)
    {
        case MSGraphDefenderScanTypeUserDefined:
            return [MSGraphDefenderScanType userDefined];
        case MSGraphDefenderScanTypeDisabled:
            return [MSGraphDefenderScanType disabled];
        case MSGraphDefenderScanTypeQuick:
            return [MSGraphDefenderScanType quick];
        case MSGraphDefenderScanTypeFull:
            return [MSGraphDefenderScanType full];
        case MSGraphDefenderScanTypeEndOfEnum:
        default:
            return [MSGraphDefenderScanType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDefenderScanTypeUserDefined:
            return @"userDefined";
        case MSGraphDefenderScanTypeDisabled:
            return @"disabled";
        case MSGraphDefenderScanTypeQuick:
            return @"quick";
        case MSGraphDefenderScanTypeFull:
            return @"full";
        case MSGraphDefenderScanTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDefenderScanTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDefenderScanType)

- (MSGraphDefenderScanType*) toMSGraphDefenderScanType{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphDefenderScanType userDefined];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphDefenderScanType disabled];
    }
    else if([self isEqualToString:@"quick"])
    {
          return [MSGraphDefenderScanType quick];
    }
    else if([self isEqualToString:@"full"])
    {
          return [MSGraphDefenderScanType full];
    }
    else {
        return [MSGraphDefenderScanType UnknownEnumValue];
    }
}

@end
