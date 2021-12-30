// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphInferenceClassificationType.h"

@interface MSGraphInferenceClassificationType () {
    MSGraphInferenceClassificationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphInferenceClassificationTypeValue enumValue;
@end

@implementation MSGraphInferenceClassificationType

+ (MSGraphInferenceClassificationType*) focused {
    static MSGraphInferenceClassificationType *_focused;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _focused = [[MSGraphInferenceClassificationType alloc] init];
        _focused.enumValue = MSGraphInferenceClassificationTypeFocused;
    });
    return _focused;
}
+ (MSGraphInferenceClassificationType*) other {
    static MSGraphInferenceClassificationType *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphInferenceClassificationType alloc] init];
        _other.enumValue = MSGraphInferenceClassificationTypeOther;
    });
    return _other;
}

+ (MSGraphInferenceClassificationType*) UnknownEnumValue {
    static MSGraphInferenceClassificationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphInferenceClassificationType alloc] init];
        _unknownValue.enumValue = MSGraphInferenceClassificationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphInferenceClassificationType*) inferenceClassificationTypeWithEnumValue:(MSGraphInferenceClassificationTypeValue)val {

    switch(val)
    {
        case MSGraphInferenceClassificationTypeFocused:
            return [MSGraphInferenceClassificationType focused];
        case MSGraphInferenceClassificationTypeOther:
            return [MSGraphInferenceClassificationType other];
        case MSGraphInferenceClassificationTypeEndOfEnum:
        default:
            return [MSGraphInferenceClassificationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphInferenceClassificationTypeFocused:
            return @"focused";
        case MSGraphInferenceClassificationTypeOther:
            return @"other";
        case MSGraphInferenceClassificationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphInferenceClassificationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphInferenceClassificationType)

- (MSGraphInferenceClassificationType*) toMSGraphInferenceClassificationType{

    if([self isEqualToString:@"focused"])
    {
          return [MSGraphInferenceClassificationType focused];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphInferenceClassificationType other];
    }
    else {
        return [MSGraphInferenceClassificationType UnknownEnumValue];
    }
}

@end
