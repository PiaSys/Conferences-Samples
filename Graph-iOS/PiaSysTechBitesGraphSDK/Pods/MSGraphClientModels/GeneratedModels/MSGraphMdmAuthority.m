// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMdmAuthority.h"

@interface MSGraphMdmAuthority () {
    MSGraphMdmAuthorityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMdmAuthorityValue enumValue;
@end

@implementation MSGraphMdmAuthority

+ (MSGraphMdmAuthority*) unknown {
    static MSGraphMdmAuthority *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphMdmAuthority alloc] init];
        _unknown.enumValue = MSGraphMdmAuthorityUnknown;
    });
    return _unknown;
}
+ (MSGraphMdmAuthority*) intune {
    static MSGraphMdmAuthority *_intune;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _intune = [[MSGraphMdmAuthority alloc] init];
        _intune.enumValue = MSGraphMdmAuthorityIntune;
    });
    return _intune;
}
+ (MSGraphMdmAuthority*) sccm {
    static MSGraphMdmAuthority *_sccm;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sccm = [[MSGraphMdmAuthority alloc] init];
        _sccm.enumValue = MSGraphMdmAuthoritySccm;
    });
    return _sccm;
}
+ (MSGraphMdmAuthority*) office365 {
    static MSGraphMdmAuthority *_office365;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _office365 = [[MSGraphMdmAuthority alloc] init];
        _office365.enumValue = MSGraphMdmAuthorityOffice365;
    });
    return _office365;
}

+ (MSGraphMdmAuthority*) UnknownEnumValue {
    static MSGraphMdmAuthority *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMdmAuthority alloc] init];
        _unknownValue.enumValue = MSGraphMdmAuthorityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMdmAuthority*) mdmAuthorityWithEnumValue:(MSGraphMdmAuthorityValue)val {

    switch(val)
    {
        case MSGraphMdmAuthorityUnknown:
            return [MSGraphMdmAuthority unknown];
        case MSGraphMdmAuthorityIntune:
            return [MSGraphMdmAuthority intune];
        case MSGraphMdmAuthoritySccm:
            return [MSGraphMdmAuthority sccm];
        case MSGraphMdmAuthorityOffice365:
            return [MSGraphMdmAuthority office365];
        case MSGraphMdmAuthorityEndOfEnum:
        default:
            return [MSGraphMdmAuthority UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMdmAuthorityUnknown:
            return @"unknown";
        case MSGraphMdmAuthorityIntune:
            return @"intune";
        case MSGraphMdmAuthoritySccm:
            return @"sccm";
        case MSGraphMdmAuthorityOffice365:
            return @"office365";
        case MSGraphMdmAuthorityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMdmAuthorityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMdmAuthority)

- (MSGraphMdmAuthority*) toMSGraphMdmAuthority{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphMdmAuthority unknown];
    }
    else if([self isEqualToString:@"intune"])
    {
          return [MSGraphMdmAuthority intune];
    }
    else if([self isEqualToString:@"sccm"])
    {
          return [MSGraphMdmAuthority sccm];
    }
    else if([self isEqualToString:@"office365"])
    {
          return [MSGraphMdmAuthority office365];
    }
    else {
        return [MSGraphMdmAuthority UnknownEnumValue];
    }
}

@end
