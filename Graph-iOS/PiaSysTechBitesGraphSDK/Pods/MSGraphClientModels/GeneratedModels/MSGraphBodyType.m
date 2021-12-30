// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBodyType.h"

@interface MSGraphBodyType () {
    MSGraphBodyTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBodyTypeValue enumValue;
@end

@implementation MSGraphBodyType

+ (MSGraphBodyType*) text {
    static MSGraphBodyType *_text;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _text = [[MSGraphBodyType alloc] init];
        _text.enumValue = MSGraphBodyTypeText;
    });
    return _text;
}
+ (MSGraphBodyType*) html {
    static MSGraphBodyType *_html;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _html = [[MSGraphBodyType alloc] init];
        _html.enumValue = MSGraphBodyTypeHtml;
    });
    return _html;
}

+ (MSGraphBodyType*) UnknownEnumValue {
    static MSGraphBodyType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBodyType alloc] init];
        _unknownValue.enumValue = MSGraphBodyTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBodyType*) bodyTypeWithEnumValue:(MSGraphBodyTypeValue)val {

    switch(val)
    {
        case MSGraphBodyTypeText:
            return [MSGraphBodyType text];
        case MSGraphBodyTypeHtml:
            return [MSGraphBodyType html];
        case MSGraphBodyTypeEndOfEnum:
        default:
            return [MSGraphBodyType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBodyTypeText:
            return @"text";
        case MSGraphBodyTypeHtml:
            return @"html";
        case MSGraphBodyTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBodyTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBodyType)

- (MSGraphBodyType*) toMSGraphBodyType{

    if([self isEqualToString:@"text"])
    {
          return [MSGraphBodyType text];
    }
    else if([self isEqualToString:@"html"])
    {
          return [MSGraphBodyType html];
    }
    else {
        return [MSGraphBodyType UnknownEnumValue];
    }
}

@end
