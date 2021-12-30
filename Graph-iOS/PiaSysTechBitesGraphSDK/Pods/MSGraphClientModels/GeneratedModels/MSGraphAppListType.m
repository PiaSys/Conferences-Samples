// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAppListType.h"

@interface MSGraphAppListType () {
    MSGraphAppListTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAppListTypeValue enumValue;
@end

@implementation MSGraphAppListType

+ (MSGraphAppListType*) none {
    static MSGraphAppListType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphAppListType alloc] init];
        _none.enumValue = MSGraphAppListTypeNone;
    });
    return _none;
}
+ (MSGraphAppListType*) appsInListCompliant {
    static MSGraphAppListType *_appsInListCompliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _appsInListCompliant = [[MSGraphAppListType alloc] init];
        _appsInListCompliant.enumValue = MSGraphAppListTypeAppsInListCompliant;
    });
    return _appsInListCompliant;
}
+ (MSGraphAppListType*) appsNotInListCompliant {
    static MSGraphAppListType *_appsNotInListCompliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _appsNotInListCompliant = [[MSGraphAppListType alloc] init];
        _appsNotInListCompliant.enumValue = MSGraphAppListTypeAppsNotInListCompliant;
    });
    return _appsNotInListCompliant;
}

+ (MSGraphAppListType*) UnknownEnumValue {
    static MSGraphAppListType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAppListType alloc] init];
        _unknownValue.enumValue = MSGraphAppListTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAppListType*) appListTypeWithEnumValue:(MSGraphAppListTypeValue)val {

    switch(val)
    {
        case MSGraphAppListTypeNone:
            return [MSGraphAppListType none];
        case MSGraphAppListTypeAppsInListCompliant:
            return [MSGraphAppListType appsInListCompliant];
        case MSGraphAppListTypeAppsNotInListCompliant:
            return [MSGraphAppListType appsNotInListCompliant];
        case MSGraphAppListTypeEndOfEnum:
        default:
            return [MSGraphAppListType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAppListTypeNone:
            return @"none";
        case MSGraphAppListTypeAppsInListCompliant:
            return @"appsInListCompliant";
        case MSGraphAppListTypeAppsNotInListCompliant:
            return @"appsNotInListCompliant";
        case MSGraphAppListTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAppListTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAppListType)

- (MSGraphAppListType*) toMSGraphAppListType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphAppListType none];
    }
    else if([self isEqualToString:@"appsInListCompliant"])
    {
          return [MSGraphAppListType appsInListCompliant];
    }
    else if([self isEqualToString:@"appsNotInListCompliant"])
    {
          return [MSGraphAppListType appsNotInListCompliant];
    }
    else {
        return [MSGraphAppListType UnknownEnumValue];
    }
}

@end
