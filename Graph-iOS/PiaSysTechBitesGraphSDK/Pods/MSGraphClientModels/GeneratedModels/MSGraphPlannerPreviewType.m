// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPlannerPreviewType.h"

@interface MSGraphPlannerPreviewType () {
    MSGraphPlannerPreviewTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPlannerPreviewTypeValue enumValue;
@end

@implementation MSGraphPlannerPreviewType

+ (MSGraphPlannerPreviewType*) automatic {
    static MSGraphPlannerPreviewType *_automatic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _automatic = [[MSGraphPlannerPreviewType alloc] init];
        _automatic.enumValue = MSGraphPlannerPreviewTypeAutomatic;
    });
    return _automatic;
}
+ (MSGraphPlannerPreviewType*) noPreview {
    static MSGraphPlannerPreviewType *_noPreview;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noPreview = [[MSGraphPlannerPreviewType alloc] init];
        _noPreview.enumValue = MSGraphPlannerPreviewTypeNoPreview;
    });
    return _noPreview;
}
+ (MSGraphPlannerPreviewType*) checklist {
    static MSGraphPlannerPreviewType *_checklist;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _checklist = [[MSGraphPlannerPreviewType alloc] init];
        _checklist.enumValue = MSGraphPlannerPreviewTypeChecklist;
    });
    return _checklist;
}
+ (MSGraphPlannerPreviewType*) description {
    static MSGraphPlannerPreviewType *_description;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _description = [[MSGraphPlannerPreviewType alloc] init];
        _description.enumValue = MSGraphPlannerPreviewTypeDescription;
    });
    return _description;
}
+ (MSGraphPlannerPreviewType*) reference {
    static MSGraphPlannerPreviewType *_reference;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reference = [[MSGraphPlannerPreviewType alloc] init];
        _reference.enumValue = MSGraphPlannerPreviewTypeReference;
    });
    return _reference;
}

+ (MSGraphPlannerPreviewType*) UnknownEnumValue {
    static MSGraphPlannerPreviewType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPlannerPreviewType alloc] init];
        _unknownValue.enumValue = MSGraphPlannerPreviewTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPlannerPreviewType*) plannerPreviewTypeWithEnumValue:(MSGraphPlannerPreviewTypeValue)val {

    switch(val)
    {
        case MSGraphPlannerPreviewTypeAutomatic:
            return [MSGraphPlannerPreviewType automatic];
        case MSGraphPlannerPreviewTypeNoPreview:
            return [MSGraphPlannerPreviewType noPreview];
        case MSGraphPlannerPreviewTypeChecklist:
            return [MSGraphPlannerPreviewType checklist];
        case MSGraphPlannerPreviewTypeDescription:
            return [MSGraphPlannerPreviewType description];
        case MSGraphPlannerPreviewTypeReference:
            return [MSGraphPlannerPreviewType reference];
        case MSGraphPlannerPreviewTypeEndOfEnum:
        default:
            return [MSGraphPlannerPreviewType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPlannerPreviewTypeAutomatic:
            return @"automatic";
        case MSGraphPlannerPreviewTypeNoPreview:
            return @"noPreview";
        case MSGraphPlannerPreviewTypeChecklist:
            return @"checklist";
        case MSGraphPlannerPreviewTypeDescription:
            return @"description";
        case MSGraphPlannerPreviewTypeReference:
            return @"reference";
        case MSGraphPlannerPreviewTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPlannerPreviewTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPlannerPreviewType)

- (MSGraphPlannerPreviewType*) toMSGraphPlannerPreviewType{

    if([self isEqualToString:@"automatic"])
    {
          return [MSGraphPlannerPreviewType automatic];
    }
    else if([self isEqualToString:@"noPreview"])
    {
          return [MSGraphPlannerPreviewType noPreview];
    }
    else if([self isEqualToString:@"checklist"])
    {
          return [MSGraphPlannerPreviewType checklist];
    }
    else if([self isEqualToString:@"description"])
    {
          return [MSGraphPlannerPreviewType description];
    }
    else if([self isEqualToString:@"reference"])
    {
          return [MSGraphPlannerPreviewType reference];
    }
    else {
        return [MSGraphPlannerPreviewType UnknownEnumValue];
    }
}

@end
