// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChangeType.h"

@interface MSGraphChangeType () {
    MSGraphChangeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChangeTypeValue enumValue;
@end

@implementation MSGraphChangeType

+ (MSGraphChangeType*) created {
    static MSGraphChangeType *_created;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _created = [[MSGraphChangeType alloc] init];
        _created.enumValue = MSGraphChangeTypeCreated;
    });
    return _created;
}
+ (MSGraphChangeType*) updated {
    static MSGraphChangeType *_updated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _updated = [[MSGraphChangeType alloc] init];
        _updated.enumValue = MSGraphChangeTypeUpdated;
    });
    return _updated;
}
+ (MSGraphChangeType*) deleted {
    static MSGraphChangeType *_deleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deleted = [[MSGraphChangeType alloc] init];
        _deleted.enumValue = MSGraphChangeTypeDeleted;
    });
    return _deleted;
}

+ (MSGraphChangeType*) UnknownEnumValue {
    static MSGraphChangeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChangeType alloc] init];
        _unknownValue.enumValue = MSGraphChangeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChangeType*) changeTypeWithEnumValue:(MSGraphChangeTypeValue)val {

    switch(val)
    {
        case MSGraphChangeTypeCreated:
            return [MSGraphChangeType created];
        case MSGraphChangeTypeUpdated:
            return [MSGraphChangeType updated];
        case MSGraphChangeTypeDeleted:
            return [MSGraphChangeType deleted];
        case MSGraphChangeTypeEndOfEnum:
        default:
            return [MSGraphChangeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChangeTypeCreated:
            return @"created";
        case MSGraphChangeTypeUpdated:
            return @"updated";
        case MSGraphChangeTypeDeleted:
            return @"deleted";
        case MSGraphChangeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChangeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChangeType)

- (MSGraphChangeType*) toMSGraphChangeType{

    if([self isEqualToString:@"created"])
    {
          return [MSGraphChangeType created];
    }
    else if([self isEqualToString:@"updated"])
    {
          return [MSGraphChangeType updated];
    }
    else if([self isEqualToString:@"deleted"])
    {
          return [MSGraphChangeType deleted];
    }
    else {
        return [MSGraphChangeType UnknownEnumValue];
    }
}

@end
