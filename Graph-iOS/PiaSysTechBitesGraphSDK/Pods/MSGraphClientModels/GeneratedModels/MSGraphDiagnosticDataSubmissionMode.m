// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDiagnosticDataSubmissionMode.h"

@interface MSGraphDiagnosticDataSubmissionMode () {
    MSGraphDiagnosticDataSubmissionModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDiagnosticDataSubmissionModeValue enumValue;
@end

@implementation MSGraphDiagnosticDataSubmissionMode

+ (MSGraphDiagnosticDataSubmissionMode*) userDefined {
    static MSGraphDiagnosticDataSubmissionMode *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphDiagnosticDataSubmissionMode alloc] init];
        _userDefined.enumValue = MSGraphDiagnosticDataSubmissionModeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphDiagnosticDataSubmissionMode*) none {
    static MSGraphDiagnosticDataSubmissionMode *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphDiagnosticDataSubmissionMode alloc] init];
        _none.enumValue = MSGraphDiagnosticDataSubmissionModeNone;
    });
    return _none;
}
+ (MSGraphDiagnosticDataSubmissionMode*) basic {
    static MSGraphDiagnosticDataSubmissionMode *_basic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _basic = [[MSGraphDiagnosticDataSubmissionMode alloc] init];
        _basic.enumValue = MSGraphDiagnosticDataSubmissionModeBasic;
    });
    return _basic;
}
+ (MSGraphDiagnosticDataSubmissionMode*) enhanced {
    static MSGraphDiagnosticDataSubmissionMode *_enhanced;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enhanced = [[MSGraphDiagnosticDataSubmissionMode alloc] init];
        _enhanced.enumValue = MSGraphDiagnosticDataSubmissionModeEnhanced;
    });
    return _enhanced;
}
+ (MSGraphDiagnosticDataSubmissionMode*) full {
    static MSGraphDiagnosticDataSubmissionMode *_full;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _full = [[MSGraphDiagnosticDataSubmissionMode alloc] init];
        _full.enumValue = MSGraphDiagnosticDataSubmissionModeFull;
    });
    return _full;
}

+ (MSGraphDiagnosticDataSubmissionMode*) UnknownEnumValue {
    static MSGraphDiagnosticDataSubmissionMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDiagnosticDataSubmissionMode alloc] init];
        _unknownValue.enumValue = MSGraphDiagnosticDataSubmissionModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDiagnosticDataSubmissionMode*) diagnosticDataSubmissionModeWithEnumValue:(MSGraphDiagnosticDataSubmissionModeValue)val {

    switch(val)
    {
        case MSGraphDiagnosticDataSubmissionModeUserDefined:
            return [MSGraphDiagnosticDataSubmissionMode userDefined];
        case MSGraphDiagnosticDataSubmissionModeNone:
            return [MSGraphDiagnosticDataSubmissionMode none];
        case MSGraphDiagnosticDataSubmissionModeBasic:
            return [MSGraphDiagnosticDataSubmissionMode basic];
        case MSGraphDiagnosticDataSubmissionModeEnhanced:
            return [MSGraphDiagnosticDataSubmissionMode enhanced];
        case MSGraphDiagnosticDataSubmissionModeFull:
            return [MSGraphDiagnosticDataSubmissionMode full];
        case MSGraphDiagnosticDataSubmissionModeEndOfEnum:
        default:
            return [MSGraphDiagnosticDataSubmissionMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDiagnosticDataSubmissionModeUserDefined:
            return @"userDefined";
        case MSGraphDiagnosticDataSubmissionModeNone:
            return @"none";
        case MSGraphDiagnosticDataSubmissionModeBasic:
            return @"basic";
        case MSGraphDiagnosticDataSubmissionModeEnhanced:
            return @"enhanced";
        case MSGraphDiagnosticDataSubmissionModeFull:
            return @"full";
        case MSGraphDiagnosticDataSubmissionModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDiagnosticDataSubmissionModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDiagnosticDataSubmissionMode)

- (MSGraphDiagnosticDataSubmissionMode*) toMSGraphDiagnosticDataSubmissionMode{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphDiagnosticDataSubmissionMode userDefined];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphDiagnosticDataSubmissionMode none];
    }
    else if([self isEqualToString:@"basic"])
    {
          return [MSGraphDiagnosticDataSubmissionMode basic];
    }
    else if([self isEqualToString:@"enhanced"])
    {
          return [MSGraphDiagnosticDataSubmissionMode enhanced];
    }
    else if([self isEqualToString:@"full"])
    {
          return [MSGraphDiagnosticDataSubmissionMode full];
    }
    else {
        return [MSGraphDiagnosticDataSubmissionMode UnknownEnumValue];
    }
}

@end
