// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamsAsyncOperationType.h"

@interface MSGraphTeamsAsyncOperationType () {
    MSGraphTeamsAsyncOperationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamsAsyncOperationTypeValue enumValue;
@end

@implementation MSGraphTeamsAsyncOperationType

+ (MSGraphTeamsAsyncOperationType*) invalid {
    static MSGraphTeamsAsyncOperationType *_invalid;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _invalid = [[MSGraphTeamsAsyncOperationType alloc] init];
        _invalid.enumValue = MSGraphTeamsAsyncOperationTypeInvalid;
    });
    return _invalid;
}
+ (MSGraphTeamsAsyncOperationType*) cloneTeam {
    static MSGraphTeamsAsyncOperationType *_cloneTeam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cloneTeam = [[MSGraphTeamsAsyncOperationType alloc] init];
        _cloneTeam.enumValue = MSGraphTeamsAsyncOperationTypeCloneTeam;
    });
    return _cloneTeam;
}
+ (MSGraphTeamsAsyncOperationType*) archiveTeam {
    static MSGraphTeamsAsyncOperationType *_archiveTeam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _archiveTeam = [[MSGraphTeamsAsyncOperationType alloc] init];
        _archiveTeam.enumValue = MSGraphTeamsAsyncOperationTypeArchiveTeam;
    });
    return _archiveTeam;
}
+ (MSGraphTeamsAsyncOperationType*) unarchiveTeam {
    static MSGraphTeamsAsyncOperationType *_unarchiveTeam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unarchiveTeam = [[MSGraphTeamsAsyncOperationType alloc] init];
        _unarchiveTeam.enumValue = MSGraphTeamsAsyncOperationTypeUnarchiveTeam;
    });
    return _unarchiveTeam;
}
+ (MSGraphTeamsAsyncOperationType*) createTeam {
    static MSGraphTeamsAsyncOperationType *_createTeam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createTeam = [[MSGraphTeamsAsyncOperationType alloc] init];
        _createTeam.enumValue = MSGraphTeamsAsyncOperationTypeCreateTeam;
    });
    return _createTeam;
}
+ (MSGraphTeamsAsyncOperationType*) unknownFutureValue {
    static MSGraphTeamsAsyncOperationType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamsAsyncOperationType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamsAsyncOperationTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamsAsyncOperationType*) UnknownEnumValue {
    static MSGraphTeamsAsyncOperationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamsAsyncOperationType alloc] init];
        _unknownValue.enumValue = MSGraphTeamsAsyncOperationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamsAsyncOperationType*) teamsAsyncOperationTypeWithEnumValue:(MSGraphTeamsAsyncOperationTypeValue)val {

    switch(val)
    {
        case MSGraphTeamsAsyncOperationTypeInvalid:
            return [MSGraphTeamsAsyncOperationType invalid];
        case MSGraphTeamsAsyncOperationTypeCloneTeam:
            return [MSGraphTeamsAsyncOperationType cloneTeam];
        case MSGraphTeamsAsyncOperationTypeArchiveTeam:
            return [MSGraphTeamsAsyncOperationType archiveTeam];
        case MSGraphTeamsAsyncOperationTypeUnarchiveTeam:
            return [MSGraphTeamsAsyncOperationType unarchiveTeam];
        case MSGraphTeamsAsyncOperationTypeCreateTeam:
            return [MSGraphTeamsAsyncOperationType createTeam];
        case MSGraphTeamsAsyncOperationTypeUnknownFutureValue:
            return [MSGraphTeamsAsyncOperationType unknownFutureValue];
        case MSGraphTeamsAsyncOperationTypeEndOfEnum:
        default:
            return [MSGraphTeamsAsyncOperationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamsAsyncOperationTypeInvalid:
            return @"invalid";
        case MSGraphTeamsAsyncOperationTypeCloneTeam:
            return @"cloneTeam";
        case MSGraphTeamsAsyncOperationTypeArchiveTeam:
            return @"archiveTeam";
        case MSGraphTeamsAsyncOperationTypeUnarchiveTeam:
            return @"unarchiveTeam";
        case MSGraphTeamsAsyncOperationTypeCreateTeam:
            return @"createTeam";
        case MSGraphTeamsAsyncOperationTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamsAsyncOperationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamsAsyncOperationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamsAsyncOperationType)

- (MSGraphTeamsAsyncOperationType*) toMSGraphTeamsAsyncOperationType{

    if([self isEqualToString:@"invalid"])
    {
          return [MSGraphTeamsAsyncOperationType invalid];
    }
    else if([self isEqualToString:@"cloneTeam"])
    {
          return [MSGraphTeamsAsyncOperationType cloneTeam];
    }
    else if([self isEqualToString:@"archiveTeam"])
    {
          return [MSGraphTeamsAsyncOperationType archiveTeam];
    }
    else if([self isEqualToString:@"unarchiveTeam"])
    {
          return [MSGraphTeamsAsyncOperationType unarchiveTeam];
    }
    else if([self isEqualToString:@"createTeam"])
    {
          return [MSGraphTeamsAsyncOperationType createTeam];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamsAsyncOperationType unknownFutureValue];
    }
    else {
        return [MSGraphTeamsAsyncOperationType UnknownEnumValue];
    }
}

@end
