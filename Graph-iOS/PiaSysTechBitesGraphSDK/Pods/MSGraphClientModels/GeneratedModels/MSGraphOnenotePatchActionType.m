// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnenotePatchActionType.h"

@interface MSGraphOnenotePatchActionType () {
    MSGraphOnenotePatchActionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnenotePatchActionTypeValue enumValue;
@end

@implementation MSGraphOnenotePatchActionType

+ (MSGraphOnenotePatchActionType*) replace {
    static MSGraphOnenotePatchActionType *_replace;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _replace = [[MSGraphOnenotePatchActionType alloc] init];
        _replace.enumValue = MSGraphOnenotePatchActionTypeReplace;
    });
    return _replace;
}
+ (MSGraphOnenotePatchActionType*) append {
    static MSGraphOnenotePatchActionType *_append;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _append = [[MSGraphOnenotePatchActionType alloc] init];
        _append.enumValue = MSGraphOnenotePatchActionTypeAppend;
    });
    return _append;
}
+ (MSGraphOnenotePatchActionType*) delete {
    static MSGraphOnenotePatchActionType *_delete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delete = [[MSGraphOnenotePatchActionType alloc] init];
        _delete.enumValue = MSGraphOnenotePatchActionTypeDelete;
    });
    return _delete;
}
+ (MSGraphOnenotePatchActionType*) insert {
    static MSGraphOnenotePatchActionType *_insert;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _insert = [[MSGraphOnenotePatchActionType alloc] init];
        _insert.enumValue = MSGraphOnenotePatchActionTypeInsert;
    });
    return _insert;
}
+ (MSGraphOnenotePatchActionType*) prepend {
    static MSGraphOnenotePatchActionType *_prepend;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _prepend = [[MSGraphOnenotePatchActionType alloc] init];
        _prepend.enumValue = MSGraphOnenotePatchActionTypePrepend;
    });
    return _prepend;
}

+ (MSGraphOnenotePatchActionType*) UnknownEnumValue {
    static MSGraphOnenotePatchActionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnenotePatchActionType alloc] init];
        _unknownValue.enumValue = MSGraphOnenotePatchActionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnenotePatchActionType*) onenotePatchActionTypeWithEnumValue:(MSGraphOnenotePatchActionTypeValue)val {

    switch(val)
    {
        case MSGraphOnenotePatchActionTypeReplace:
            return [MSGraphOnenotePatchActionType replace];
        case MSGraphOnenotePatchActionTypeAppend:
            return [MSGraphOnenotePatchActionType append];
        case MSGraphOnenotePatchActionTypeDelete:
            return [MSGraphOnenotePatchActionType delete];
        case MSGraphOnenotePatchActionTypeInsert:
            return [MSGraphOnenotePatchActionType insert];
        case MSGraphOnenotePatchActionTypePrepend:
            return [MSGraphOnenotePatchActionType prepend];
        case MSGraphOnenotePatchActionTypeEndOfEnum:
        default:
            return [MSGraphOnenotePatchActionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnenotePatchActionTypeReplace:
            return @"Replace";
        case MSGraphOnenotePatchActionTypeAppend:
            return @"Append";
        case MSGraphOnenotePatchActionTypeDelete:
            return @"Delete";
        case MSGraphOnenotePatchActionTypeInsert:
            return @"Insert";
        case MSGraphOnenotePatchActionTypePrepend:
            return @"Prepend";
        case MSGraphOnenotePatchActionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnenotePatchActionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnenotePatchActionType)

- (MSGraphOnenotePatchActionType*) toMSGraphOnenotePatchActionType{

    if([self isEqualToString:@"Replace"])
    {
          return [MSGraphOnenotePatchActionType replace];
    }
    else if([self isEqualToString:@"Append"])
    {
          return [MSGraphOnenotePatchActionType append];
    }
    else if([self isEqualToString:@"Delete"])
    {
          return [MSGraphOnenotePatchActionType delete];
    }
    else if([self isEqualToString:@"Insert"])
    {
          return [MSGraphOnenotePatchActionType insert];
    }
    else if([self isEqualToString:@"Prepend"])
    {
          return [MSGraphOnenotePatchActionType prepend];
    }
    else {
        return [MSGraphOnenotePatchActionType UnknownEnumValue];
    }
}

@end
