// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRegistryOperation.h"

@interface MSGraphRegistryOperation () {
    MSGraphRegistryOperationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRegistryOperationValue enumValue;
@end

@implementation MSGraphRegistryOperation

+ (MSGraphRegistryOperation*) unknown {
    static MSGraphRegistryOperation *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphRegistryOperation alloc] init];
        _unknown.enumValue = MSGraphRegistryOperationUnknown;
    });
    return _unknown;
}
+ (MSGraphRegistryOperation*) create {
    static MSGraphRegistryOperation *_create;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _create = [[MSGraphRegistryOperation alloc] init];
        _create.enumValue = MSGraphRegistryOperationCreate;
    });
    return _create;
}
+ (MSGraphRegistryOperation*) modify {
    static MSGraphRegistryOperation *_modify;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _modify = [[MSGraphRegistryOperation alloc] init];
        _modify.enumValue = MSGraphRegistryOperationModify;
    });
    return _modify;
}
+ (MSGraphRegistryOperation*) delete {
    static MSGraphRegistryOperation *_delete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delete = [[MSGraphRegistryOperation alloc] init];
        _delete.enumValue = MSGraphRegistryOperationDelete;
    });
    return _delete;
}
+ (MSGraphRegistryOperation*) unknownFutureValue {
    static MSGraphRegistryOperation *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRegistryOperation alloc] init];
        _unknownFutureValue.enumValue = MSGraphRegistryOperationUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRegistryOperation*) UnknownEnumValue {
    static MSGraphRegistryOperation *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRegistryOperation alloc] init];
        _unknownValue.enumValue = MSGraphRegistryOperationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRegistryOperation*) registryOperationWithEnumValue:(MSGraphRegistryOperationValue)val {

    switch(val)
    {
        case MSGraphRegistryOperationUnknown:
            return [MSGraphRegistryOperation unknown];
        case MSGraphRegistryOperationCreate:
            return [MSGraphRegistryOperation create];
        case MSGraphRegistryOperationModify:
            return [MSGraphRegistryOperation modify];
        case MSGraphRegistryOperationDelete:
            return [MSGraphRegistryOperation delete];
        case MSGraphRegistryOperationUnknownFutureValue:
            return [MSGraphRegistryOperation unknownFutureValue];
        case MSGraphRegistryOperationEndOfEnum:
        default:
            return [MSGraphRegistryOperation UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRegistryOperationUnknown:
            return @"unknown";
        case MSGraphRegistryOperationCreate:
            return @"create";
        case MSGraphRegistryOperationModify:
            return @"modify";
        case MSGraphRegistryOperationDelete:
            return @"delete";
        case MSGraphRegistryOperationUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRegistryOperationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRegistryOperationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRegistryOperation)

- (MSGraphRegistryOperation*) toMSGraphRegistryOperation{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphRegistryOperation unknown];
    }
    else if([self isEqualToString:@"create"])
    {
          return [MSGraphRegistryOperation create];
    }
    else if([self isEqualToString:@"modify"])
    {
          return [MSGraphRegistryOperation modify];
    }
    else if([self isEqualToString:@"delete"])
    {
          return [MSGraphRegistryOperation delete];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRegistryOperation unknownFutureValue];
    }
    else {
        return [MSGraphRegistryOperation UnknownEnumValue];
    }
}

@end
