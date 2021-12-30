// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMdmAppConfigKeyType.h"

@interface MSGraphMdmAppConfigKeyType () {
    MSGraphMdmAppConfigKeyTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMdmAppConfigKeyTypeValue enumValue;
@end

@implementation MSGraphMdmAppConfigKeyType

+ (MSGraphMdmAppConfigKeyType*) stringType {
    static MSGraphMdmAppConfigKeyType *_stringType;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stringType = [[MSGraphMdmAppConfigKeyType alloc] init];
        _stringType.enumValue = MSGraphMdmAppConfigKeyTypeStringType;
    });
    return _stringType;
}
+ (MSGraphMdmAppConfigKeyType*) integerType {
    static MSGraphMdmAppConfigKeyType *_integerType;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _integerType = [[MSGraphMdmAppConfigKeyType alloc] init];
        _integerType.enumValue = MSGraphMdmAppConfigKeyTypeIntegerType;
    });
    return _integerType;
}
+ (MSGraphMdmAppConfigKeyType*) realType {
    static MSGraphMdmAppConfigKeyType *_realType;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _realType = [[MSGraphMdmAppConfigKeyType alloc] init];
        _realType.enumValue = MSGraphMdmAppConfigKeyTypeRealType;
    });
    return _realType;
}
+ (MSGraphMdmAppConfigKeyType*) booleanType {
    static MSGraphMdmAppConfigKeyType *_booleanType;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _booleanType = [[MSGraphMdmAppConfigKeyType alloc] init];
        _booleanType.enumValue = MSGraphMdmAppConfigKeyTypeBooleanType;
    });
    return _booleanType;
}
+ (MSGraphMdmAppConfigKeyType*) tokenType {
    static MSGraphMdmAppConfigKeyType *_tokenType;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tokenType = [[MSGraphMdmAppConfigKeyType alloc] init];
        _tokenType.enumValue = MSGraphMdmAppConfigKeyTypeTokenType;
    });
    return _tokenType;
}

+ (MSGraphMdmAppConfigKeyType*) UnknownEnumValue {
    static MSGraphMdmAppConfigKeyType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMdmAppConfigKeyType alloc] init];
        _unknownValue.enumValue = MSGraphMdmAppConfigKeyTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMdmAppConfigKeyType*) mdmAppConfigKeyTypeWithEnumValue:(MSGraphMdmAppConfigKeyTypeValue)val {

    switch(val)
    {
        case MSGraphMdmAppConfigKeyTypeStringType:
            return [MSGraphMdmAppConfigKeyType stringType];
        case MSGraphMdmAppConfigKeyTypeIntegerType:
            return [MSGraphMdmAppConfigKeyType integerType];
        case MSGraphMdmAppConfigKeyTypeRealType:
            return [MSGraphMdmAppConfigKeyType realType];
        case MSGraphMdmAppConfigKeyTypeBooleanType:
            return [MSGraphMdmAppConfigKeyType booleanType];
        case MSGraphMdmAppConfigKeyTypeTokenType:
            return [MSGraphMdmAppConfigKeyType tokenType];
        case MSGraphMdmAppConfigKeyTypeEndOfEnum:
        default:
            return [MSGraphMdmAppConfigKeyType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMdmAppConfigKeyTypeStringType:
            return @"stringType";
        case MSGraphMdmAppConfigKeyTypeIntegerType:
            return @"integerType";
        case MSGraphMdmAppConfigKeyTypeRealType:
            return @"realType";
        case MSGraphMdmAppConfigKeyTypeBooleanType:
            return @"booleanType";
        case MSGraphMdmAppConfigKeyTypeTokenType:
            return @"tokenType";
        case MSGraphMdmAppConfigKeyTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMdmAppConfigKeyTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMdmAppConfigKeyType)

- (MSGraphMdmAppConfigKeyType*) toMSGraphMdmAppConfigKeyType{

    if([self isEqualToString:@"stringType"])
    {
          return [MSGraphMdmAppConfigKeyType stringType];
    }
    else if([self isEqualToString:@"integerType"])
    {
          return [MSGraphMdmAppConfigKeyType integerType];
    }
    else if([self isEqualToString:@"realType"])
    {
          return [MSGraphMdmAppConfigKeyType realType];
    }
    else if([self isEqualToString:@"booleanType"])
    {
          return [MSGraphMdmAppConfigKeyType booleanType];
    }
    else if([self isEqualToString:@"tokenType"])
    {
          return [MSGraphMdmAppConfigKeyType tokenType];
    }
    else {
        return [MSGraphMdmAppConfigKeyType UnknownEnumValue];
    }
}

@end
