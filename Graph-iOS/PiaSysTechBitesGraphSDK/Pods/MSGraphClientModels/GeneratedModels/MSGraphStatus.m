// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphStatus.h"

@interface MSGraphStatus () {
    MSGraphStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphStatusValue enumValue;
@end

@implementation MSGraphStatus

+ (MSGraphStatus*) active {
    static MSGraphStatus *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphStatus alloc] init];
        _active.enumValue = MSGraphStatusActive;
    });
    return _active;
}
+ (MSGraphStatus*) updated {
    static MSGraphStatus *_updated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _updated = [[MSGraphStatus alloc] init];
        _updated.enumValue = MSGraphStatusUpdated;
    });
    return _updated;
}
+ (MSGraphStatus*) deleted {
    static MSGraphStatus *_deleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deleted = [[MSGraphStatus alloc] init];
        _deleted.enumValue = MSGraphStatusDeleted;
    });
    return _deleted;
}
+ (MSGraphStatus*) ignored {
    static MSGraphStatus *_ignored;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ignored = [[MSGraphStatus alloc] init];
        _ignored.enumValue = MSGraphStatusIgnored;
    });
    return _ignored;
}
+ (MSGraphStatus*) unknownFutureValue {
    static MSGraphStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphStatus*) UnknownEnumValue {
    static MSGraphStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphStatus alloc] init];
        _unknownValue.enumValue = MSGraphStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphStatus*) statusWithEnumValue:(MSGraphStatusValue)val {

    switch(val)
    {
        case MSGraphStatusActive:
            return [MSGraphStatus active];
        case MSGraphStatusUpdated:
            return [MSGraphStatus updated];
        case MSGraphStatusDeleted:
            return [MSGraphStatus deleted];
        case MSGraphStatusIgnored:
            return [MSGraphStatus ignored];
        case MSGraphStatusUnknownFutureValue:
            return [MSGraphStatus unknownFutureValue];
        case MSGraphStatusEndOfEnum:
        default:
            return [MSGraphStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphStatusActive:
            return @"active";
        case MSGraphStatusUpdated:
            return @"updated";
        case MSGraphStatusDeleted:
            return @"deleted";
        case MSGraphStatusIgnored:
            return @"ignored";
        case MSGraphStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphStatus)

- (MSGraphStatus*) toMSGraphStatus{

    if([self isEqualToString:@"active"])
    {
          return [MSGraphStatus active];
    }
    else if([self isEqualToString:@"updated"])
    {
          return [MSGraphStatus updated];
    }
    else if([self isEqualToString:@"deleted"])
    {
          return [MSGraphStatus deleted];
    }
    else if([self isEqualToString:@"ignored"])
    {
          return [MSGraphStatus ignored];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphStatus unknownFutureValue];
    }
    else {
        return [MSGraphStatus UnknownEnumValue];
    }
}

@end
