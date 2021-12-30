// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSharedPCAccountDeletionPolicyType.h"

@interface MSGraphSharedPCAccountDeletionPolicyType () {
    MSGraphSharedPCAccountDeletionPolicyTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSharedPCAccountDeletionPolicyTypeValue enumValue;
@end

@implementation MSGraphSharedPCAccountDeletionPolicyType

+ (MSGraphSharedPCAccountDeletionPolicyType*) immediate {
    static MSGraphSharedPCAccountDeletionPolicyType *_immediate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _immediate = [[MSGraphSharedPCAccountDeletionPolicyType alloc] init];
        _immediate.enumValue = MSGraphSharedPCAccountDeletionPolicyTypeImmediate;
    });
    return _immediate;
}
+ (MSGraphSharedPCAccountDeletionPolicyType*) diskSpaceThreshold {
    static MSGraphSharedPCAccountDeletionPolicyType *_diskSpaceThreshold;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _diskSpaceThreshold = [[MSGraphSharedPCAccountDeletionPolicyType alloc] init];
        _diskSpaceThreshold.enumValue = MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThreshold;
    });
    return _diskSpaceThreshold;
}
+ (MSGraphSharedPCAccountDeletionPolicyType*) diskSpaceThresholdOrInactiveThreshold {
    static MSGraphSharedPCAccountDeletionPolicyType *_diskSpaceThresholdOrInactiveThreshold;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _diskSpaceThresholdOrInactiveThreshold = [[MSGraphSharedPCAccountDeletionPolicyType alloc] init];
        _diskSpaceThresholdOrInactiveThreshold.enumValue = MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThresholdOrInactiveThreshold;
    });
    return _diskSpaceThresholdOrInactiveThreshold;
}

+ (MSGraphSharedPCAccountDeletionPolicyType*) UnknownEnumValue {
    static MSGraphSharedPCAccountDeletionPolicyType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSharedPCAccountDeletionPolicyType alloc] init];
        _unknownValue.enumValue = MSGraphSharedPCAccountDeletionPolicyTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSharedPCAccountDeletionPolicyType*) sharedPCAccountDeletionPolicyTypeWithEnumValue:(MSGraphSharedPCAccountDeletionPolicyTypeValue)val {

    switch(val)
    {
        case MSGraphSharedPCAccountDeletionPolicyTypeImmediate:
            return [MSGraphSharedPCAccountDeletionPolicyType immediate];
        case MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThreshold:
            return [MSGraphSharedPCAccountDeletionPolicyType diskSpaceThreshold];
        case MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThresholdOrInactiveThreshold:
            return [MSGraphSharedPCAccountDeletionPolicyType diskSpaceThresholdOrInactiveThreshold];
        case MSGraphSharedPCAccountDeletionPolicyTypeEndOfEnum:
        default:
            return [MSGraphSharedPCAccountDeletionPolicyType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSharedPCAccountDeletionPolicyTypeImmediate:
            return @"immediate";
        case MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThreshold:
            return @"diskSpaceThreshold";
        case MSGraphSharedPCAccountDeletionPolicyTypeDiskSpaceThresholdOrInactiveThreshold:
            return @"diskSpaceThresholdOrInactiveThreshold";
        case MSGraphSharedPCAccountDeletionPolicyTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSharedPCAccountDeletionPolicyTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSharedPCAccountDeletionPolicyType)

- (MSGraphSharedPCAccountDeletionPolicyType*) toMSGraphSharedPCAccountDeletionPolicyType{

    if([self isEqualToString:@"immediate"])
    {
          return [MSGraphSharedPCAccountDeletionPolicyType immediate];
    }
    else if([self isEqualToString:@"diskSpaceThreshold"])
    {
          return [MSGraphSharedPCAccountDeletionPolicyType diskSpaceThreshold];
    }
    else if([self isEqualToString:@"diskSpaceThresholdOrInactiveThreshold"])
    {
          return [MSGraphSharedPCAccountDeletionPolicyType diskSpaceThresholdOrInactiveThreshold];
    }
    else {
        return [MSGraphSharedPCAccountDeletionPolicyType UnknownEnumValue];
    }
}

@end
