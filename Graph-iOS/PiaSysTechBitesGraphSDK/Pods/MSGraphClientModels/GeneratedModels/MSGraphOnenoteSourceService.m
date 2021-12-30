// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnenoteSourceService.h"

@interface MSGraphOnenoteSourceService () {
    MSGraphOnenoteSourceServiceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnenoteSourceServiceValue enumValue;
@end

@implementation MSGraphOnenoteSourceService

+ (MSGraphOnenoteSourceService*) unknown {
    static MSGraphOnenoteSourceService *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphOnenoteSourceService alloc] init];
        _unknown.enumValue = MSGraphOnenoteSourceServiceUnknown;
    });
    return _unknown;
}
+ (MSGraphOnenoteSourceService*) oneDrive {
    static MSGraphOnenoteSourceService *_oneDrive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneDrive = [[MSGraphOnenoteSourceService alloc] init];
        _oneDrive.enumValue = MSGraphOnenoteSourceServiceOneDrive;
    });
    return _oneDrive;
}
+ (MSGraphOnenoteSourceService*) oneDriveForBusiness {
    static MSGraphOnenoteSourceService *_oneDriveForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneDriveForBusiness = [[MSGraphOnenoteSourceService alloc] init];
        _oneDriveForBusiness.enumValue = MSGraphOnenoteSourceServiceOneDriveForBusiness;
    });
    return _oneDriveForBusiness;
}
+ (MSGraphOnenoteSourceService*) onPremOneDriveForBusiness {
    static MSGraphOnenoteSourceService *_onPremOneDriveForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _onPremOneDriveForBusiness = [[MSGraphOnenoteSourceService alloc] init];
        _onPremOneDriveForBusiness.enumValue = MSGraphOnenoteSourceServiceOnPremOneDriveForBusiness;
    });
    return _onPremOneDriveForBusiness;
}

+ (MSGraphOnenoteSourceService*) UnknownEnumValue {
    static MSGraphOnenoteSourceService *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnenoteSourceService alloc] init];
        _unknownValue.enumValue = MSGraphOnenoteSourceServiceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnenoteSourceService*) onenoteSourceServiceWithEnumValue:(MSGraphOnenoteSourceServiceValue)val {

    switch(val)
    {
        case MSGraphOnenoteSourceServiceUnknown:
            return [MSGraphOnenoteSourceService unknown];
        case MSGraphOnenoteSourceServiceOneDrive:
            return [MSGraphOnenoteSourceService oneDrive];
        case MSGraphOnenoteSourceServiceOneDriveForBusiness:
            return [MSGraphOnenoteSourceService oneDriveForBusiness];
        case MSGraphOnenoteSourceServiceOnPremOneDriveForBusiness:
            return [MSGraphOnenoteSourceService onPremOneDriveForBusiness];
        case MSGraphOnenoteSourceServiceEndOfEnum:
        default:
            return [MSGraphOnenoteSourceService UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnenoteSourceServiceUnknown:
            return @"Unknown";
        case MSGraphOnenoteSourceServiceOneDrive:
            return @"OneDrive";
        case MSGraphOnenoteSourceServiceOneDriveForBusiness:
            return @"OneDriveForBusiness";
        case MSGraphOnenoteSourceServiceOnPremOneDriveForBusiness:
            return @"OnPremOneDriveForBusiness";
        case MSGraphOnenoteSourceServiceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnenoteSourceServiceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnenoteSourceService)

- (MSGraphOnenoteSourceService*) toMSGraphOnenoteSourceService{

    if([self isEqualToString:@"Unknown"])
    {
          return [MSGraphOnenoteSourceService unknown];
    }
    else if([self isEqualToString:@"OneDrive"])
    {
          return [MSGraphOnenoteSourceService oneDrive];
    }
    else if([self isEqualToString:@"OneDriveForBusiness"])
    {
          return [MSGraphOnenoteSourceService oneDriveForBusiness];
    }
    else if([self isEqualToString:@"OnPremOneDriveForBusiness"])
    {
          return [MSGraphOnenoteSourceService onPremOneDriveForBusiness];
    }
    else {
        return [MSGraphOnenoteSourceService UnknownEnumValue];
    }
}

@end
