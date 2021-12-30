// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSensitivity.h"

@interface MSGraphSensitivity () {
    MSGraphSensitivityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSensitivityValue enumValue;
@end

@implementation MSGraphSensitivity

+ (MSGraphSensitivity*) normal {
    static MSGraphSensitivity *_normal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _normal = [[MSGraphSensitivity alloc] init];
        _normal.enumValue = MSGraphSensitivityNormal;
    });
    return _normal;
}
+ (MSGraphSensitivity*) personal {
    static MSGraphSensitivity *_personal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _personal = [[MSGraphSensitivity alloc] init];
        _personal.enumValue = MSGraphSensitivityPersonal;
    });
    return _personal;
}
+ (MSGraphSensitivity*) private {
    static MSGraphSensitivity *_private;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _private = [[MSGraphSensitivity alloc] init];
        _private.enumValue = MSGraphSensitivityPrivate;
    });
    return _private;
}
+ (MSGraphSensitivity*) confidential {
    static MSGraphSensitivity *_confidential;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _confidential = [[MSGraphSensitivity alloc] init];
        _confidential.enumValue = MSGraphSensitivityConfidential;
    });
    return _confidential;
}

+ (MSGraphSensitivity*) UnknownEnumValue {
    static MSGraphSensitivity *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSensitivity alloc] init];
        _unknownValue.enumValue = MSGraphSensitivityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSensitivity*) sensitivityWithEnumValue:(MSGraphSensitivityValue)val {

    switch(val)
    {
        case MSGraphSensitivityNormal:
            return [MSGraphSensitivity normal];
        case MSGraphSensitivityPersonal:
            return [MSGraphSensitivity personal];
        case MSGraphSensitivityPrivate:
            return [MSGraphSensitivity private];
        case MSGraphSensitivityConfidential:
            return [MSGraphSensitivity confidential];
        case MSGraphSensitivityEndOfEnum:
        default:
            return [MSGraphSensitivity UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSensitivityNormal:
            return @"normal";
        case MSGraphSensitivityPersonal:
            return @"personal";
        case MSGraphSensitivityPrivate:
            return @"private";
        case MSGraphSensitivityConfidential:
            return @"confidential";
        case MSGraphSensitivityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSensitivityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSensitivity)

- (MSGraphSensitivity*) toMSGraphSensitivity{

    if([self isEqualToString:@"normal"])
    {
          return [MSGraphSensitivity normal];
    }
    else if([self isEqualToString:@"personal"])
    {
          return [MSGraphSensitivity personal];
    }
    else if([self isEqualToString:@"private"])
    {
          return [MSGraphSensitivity private];
    }
    else if([self isEqualToString:@"confidential"])
    {
          return [MSGraphSensitivity confidential];
    }
    else {
        return [MSGraphSensitivity UnknownEnumValue];
    }
}

@end
