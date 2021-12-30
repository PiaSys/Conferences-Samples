// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphGroupType.h"

@interface MSGraphGroupType () {
    MSGraphGroupTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphGroupTypeValue enumValue;
@end

@implementation MSGraphGroupType

+ (MSGraphGroupType*) unifiedGroups {
    static MSGraphGroupType *_unifiedGroups;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unifiedGroups = [[MSGraphGroupType alloc] init];
        _unifiedGroups.enumValue = MSGraphGroupTypeUnifiedGroups;
    });
    return _unifiedGroups;
}
+ (MSGraphGroupType*) azureAD {
    static MSGraphGroupType *_azureAD;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureAD = [[MSGraphGroupType alloc] init];
        _azureAD.enumValue = MSGraphGroupTypeAzureAD;
    });
    return _azureAD;
}
+ (MSGraphGroupType*) unknownFutureValue {
    static MSGraphGroupType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphGroupType alloc] init];
        _unknownFutureValue.enumValue = MSGraphGroupTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphGroupType*) UnknownEnumValue {
    static MSGraphGroupType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphGroupType alloc] init];
        _unknownValue.enumValue = MSGraphGroupTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphGroupType*) groupTypeWithEnumValue:(MSGraphGroupTypeValue)val {

    switch(val)
    {
        case MSGraphGroupTypeUnifiedGroups:
            return [MSGraphGroupType unifiedGroups];
        case MSGraphGroupTypeAzureAD:
            return [MSGraphGroupType azureAD];
        case MSGraphGroupTypeUnknownFutureValue:
            return [MSGraphGroupType unknownFutureValue];
        case MSGraphGroupTypeEndOfEnum:
        default:
            return [MSGraphGroupType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphGroupTypeUnifiedGroups:
            return @"unifiedGroups";
        case MSGraphGroupTypeAzureAD:
            return @"azureAD";
        case MSGraphGroupTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphGroupTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphGroupTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphGroupType)

- (MSGraphGroupType*) toMSGraphGroupType{

    if([self isEqualToString:@"unifiedGroups"])
    {
          return [MSGraphGroupType unifiedGroups];
    }
    else if([self isEqualToString:@"azureAD"])
    {
          return [MSGraphGroupType azureAD];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphGroupType unknownFutureValue];
    }
    else {
        return [MSGraphGroupType UnknownEnumValue];
    }
}

@end
