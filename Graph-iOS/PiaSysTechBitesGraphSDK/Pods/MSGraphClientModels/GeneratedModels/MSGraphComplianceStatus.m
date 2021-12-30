// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphComplianceStatus.h"

@interface MSGraphComplianceStatus () {
    MSGraphComplianceStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphComplianceStatusValue enumValue;
@end

@implementation MSGraphComplianceStatus

+ (MSGraphComplianceStatus*) unknown {
    static MSGraphComplianceStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphComplianceStatus alloc] init];
        _unknown.enumValue = MSGraphComplianceStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphComplianceStatus*) notApplicable {
    static MSGraphComplianceStatus *_notApplicable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notApplicable = [[MSGraphComplianceStatus alloc] init];
        _notApplicable.enumValue = MSGraphComplianceStatusNotApplicable;
    });
    return _notApplicable;
}
+ (MSGraphComplianceStatus*) compliant {
    static MSGraphComplianceStatus *_compliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compliant = [[MSGraphComplianceStatus alloc] init];
        _compliant.enumValue = MSGraphComplianceStatusCompliant;
    });
    return _compliant;
}
+ (MSGraphComplianceStatus*) remediated {
    static MSGraphComplianceStatus *_remediated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _remediated = [[MSGraphComplianceStatus alloc] init];
        _remediated.enumValue = MSGraphComplianceStatusRemediated;
    });
    return _remediated;
}
+ (MSGraphComplianceStatus*) nonCompliant {
    static MSGraphComplianceStatus *_nonCompliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nonCompliant = [[MSGraphComplianceStatus alloc] init];
        _nonCompliant.enumValue = MSGraphComplianceStatusNonCompliant;
    });
    return _nonCompliant;
}
+ (MSGraphComplianceStatus*) error {
    static MSGraphComplianceStatus *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphComplianceStatus alloc] init];
        _error.enumValue = MSGraphComplianceStatusError;
    });
    return _error;
}
+ (MSGraphComplianceStatus*) conflict {
    static MSGraphComplianceStatus *_conflict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _conflict = [[MSGraphComplianceStatus alloc] init];
        _conflict.enumValue = MSGraphComplianceStatusConflict;
    });
    return _conflict;
}
+ (MSGraphComplianceStatus*) notAssigned {
    static MSGraphComplianceStatus *_notAssigned;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notAssigned = [[MSGraphComplianceStatus alloc] init];
        _notAssigned.enumValue = MSGraphComplianceStatusNotAssigned;
    });
    return _notAssigned;
}

+ (MSGraphComplianceStatus*) UnknownEnumValue {
    static MSGraphComplianceStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphComplianceStatus alloc] init];
        _unknownValue.enumValue = MSGraphComplianceStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphComplianceStatus*) complianceStatusWithEnumValue:(MSGraphComplianceStatusValue)val {

    switch(val)
    {
        case MSGraphComplianceStatusUnknown:
            return [MSGraphComplianceStatus unknown];
        case MSGraphComplianceStatusNotApplicable:
            return [MSGraphComplianceStatus notApplicable];
        case MSGraphComplianceStatusCompliant:
            return [MSGraphComplianceStatus compliant];
        case MSGraphComplianceStatusRemediated:
            return [MSGraphComplianceStatus remediated];
        case MSGraphComplianceStatusNonCompliant:
            return [MSGraphComplianceStatus nonCompliant];
        case MSGraphComplianceStatusError:
            return [MSGraphComplianceStatus error];
        case MSGraphComplianceStatusConflict:
            return [MSGraphComplianceStatus conflict];
        case MSGraphComplianceStatusNotAssigned:
            return [MSGraphComplianceStatus notAssigned];
        case MSGraphComplianceStatusEndOfEnum:
        default:
            return [MSGraphComplianceStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphComplianceStatusUnknown:
            return @"unknown";
        case MSGraphComplianceStatusNotApplicable:
            return @"notApplicable";
        case MSGraphComplianceStatusCompliant:
            return @"compliant";
        case MSGraphComplianceStatusRemediated:
            return @"remediated";
        case MSGraphComplianceStatusNonCompliant:
            return @"nonCompliant";
        case MSGraphComplianceStatusError:
            return @"error";
        case MSGraphComplianceStatusConflict:
            return @"conflict";
        case MSGraphComplianceStatusNotAssigned:
            return @"notAssigned";
        case MSGraphComplianceStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphComplianceStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphComplianceStatus)

- (MSGraphComplianceStatus*) toMSGraphComplianceStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphComplianceStatus unknown];
    }
    else if([self isEqualToString:@"notApplicable"])
    {
          return [MSGraphComplianceStatus notApplicable];
    }
    else if([self isEqualToString:@"compliant"])
    {
          return [MSGraphComplianceStatus compliant];
    }
    else if([self isEqualToString:@"remediated"])
    {
          return [MSGraphComplianceStatus remediated];
    }
    else if([self isEqualToString:@"nonCompliant"])
    {
          return [MSGraphComplianceStatus nonCompliant];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphComplianceStatus error];
    }
    else if([self isEqualToString:@"conflict"])
    {
          return [MSGraphComplianceStatus conflict];
    }
    else if([self isEqualToString:@"notAssigned"])
    {
          return [MSGraphComplianceStatus notAssigned];
    }
    else {
        return [MSGraphComplianceStatus UnknownEnumValue];
    }
}

@end
