// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphIosUpdatesInstallStatus.h"

@interface MSGraphIosUpdatesInstallStatus () {
    MSGraphIosUpdatesInstallStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphIosUpdatesInstallStatusValue enumValue;
@end

@implementation MSGraphIosUpdatesInstallStatus

+ (MSGraphIosUpdatesInstallStatus*) downloading {
    static MSGraphIosUpdatesInstallStatus *_downloading;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _downloading = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _downloading.enumValue = MSGraphIosUpdatesInstallStatusDownloading;
    });
    return _downloading;
}
+ (MSGraphIosUpdatesInstallStatus*) downloadFailed {
    static MSGraphIosUpdatesInstallStatus *_downloadFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _downloadFailed = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _downloadFailed.enumValue = MSGraphIosUpdatesInstallStatusDownloadFailed;
    });
    return _downloadFailed;
}
+ (MSGraphIosUpdatesInstallStatus*) downloadRequiresComputer {
    static MSGraphIosUpdatesInstallStatus *_downloadRequiresComputer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _downloadRequiresComputer = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _downloadRequiresComputer.enumValue = MSGraphIosUpdatesInstallStatusDownloadRequiresComputer;
    });
    return _downloadRequiresComputer;
}
+ (MSGraphIosUpdatesInstallStatus*) downloadInsufficientSpace {
    static MSGraphIosUpdatesInstallStatus *_downloadInsufficientSpace;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _downloadInsufficientSpace = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _downloadInsufficientSpace.enumValue = MSGraphIosUpdatesInstallStatusDownloadInsufficientSpace;
    });
    return _downloadInsufficientSpace;
}
+ (MSGraphIosUpdatesInstallStatus*) downloadInsufficientPower {
    static MSGraphIosUpdatesInstallStatus *_downloadInsufficientPower;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _downloadInsufficientPower = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _downloadInsufficientPower.enumValue = MSGraphIosUpdatesInstallStatusDownloadInsufficientPower;
    });
    return _downloadInsufficientPower;
}
+ (MSGraphIosUpdatesInstallStatus*) downloadInsufficientNetwork {
    static MSGraphIosUpdatesInstallStatus *_downloadInsufficientNetwork;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _downloadInsufficientNetwork = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _downloadInsufficientNetwork.enumValue = MSGraphIosUpdatesInstallStatusDownloadInsufficientNetwork;
    });
    return _downloadInsufficientNetwork;
}
+ (MSGraphIosUpdatesInstallStatus*) installing {
    static MSGraphIosUpdatesInstallStatus *_installing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _installing = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _installing.enumValue = MSGraphIosUpdatesInstallStatusInstalling;
    });
    return _installing;
}
+ (MSGraphIosUpdatesInstallStatus*) installInsufficientSpace {
    static MSGraphIosUpdatesInstallStatus *_installInsufficientSpace;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _installInsufficientSpace = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _installInsufficientSpace.enumValue = MSGraphIosUpdatesInstallStatusInstallInsufficientSpace;
    });
    return _installInsufficientSpace;
}
+ (MSGraphIosUpdatesInstallStatus*) installInsufficientPower {
    static MSGraphIosUpdatesInstallStatus *_installInsufficientPower;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _installInsufficientPower = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _installInsufficientPower.enumValue = MSGraphIosUpdatesInstallStatusInstallInsufficientPower;
    });
    return _installInsufficientPower;
}
+ (MSGraphIosUpdatesInstallStatus*) installPhoneCallInProgress {
    static MSGraphIosUpdatesInstallStatus *_installPhoneCallInProgress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _installPhoneCallInProgress = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _installPhoneCallInProgress.enumValue = MSGraphIosUpdatesInstallStatusInstallPhoneCallInProgress;
    });
    return _installPhoneCallInProgress;
}
+ (MSGraphIosUpdatesInstallStatus*) installFailed {
    static MSGraphIosUpdatesInstallStatus *_installFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _installFailed = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _installFailed.enumValue = MSGraphIosUpdatesInstallStatusInstallFailed;
    });
    return _installFailed;
}
+ (MSGraphIosUpdatesInstallStatus*) notSupportedOperation {
    static MSGraphIosUpdatesInstallStatus *_notSupportedOperation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSupportedOperation = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _notSupportedOperation.enumValue = MSGraphIosUpdatesInstallStatusNotSupportedOperation;
    });
    return _notSupportedOperation;
}
+ (MSGraphIosUpdatesInstallStatus*) sharedDeviceUserLoggedInError {
    static MSGraphIosUpdatesInstallStatus *_sharedDeviceUserLoggedInError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDeviceUserLoggedInError = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _sharedDeviceUserLoggedInError.enumValue = MSGraphIosUpdatesInstallStatusSharedDeviceUserLoggedInError;
    });
    return _sharedDeviceUserLoggedInError;
}
+ (MSGraphIosUpdatesInstallStatus*) success {
    static MSGraphIosUpdatesInstallStatus *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _success.enumValue = MSGraphIosUpdatesInstallStatusSuccess;
    });
    return _success;
}
+ (MSGraphIosUpdatesInstallStatus*) available {
    static MSGraphIosUpdatesInstallStatus *_available;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _available = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _available.enumValue = MSGraphIosUpdatesInstallStatusAvailable;
    });
    return _available;
}
+ (MSGraphIosUpdatesInstallStatus*) idle {
    static MSGraphIosUpdatesInstallStatus *_idle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _idle = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _idle.enumValue = MSGraphIosUpdatesInstallStatusIdle;
    });
    return _idle;
}
+ (MSGraphIosUpdatesInstallStatus*) unknown {
    static MSGraphIosUpdatesInstallStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _unknown.enumValue = MSGraphIosUpdatesInstallStatusUnknown;
    });
    return _unknown;
}

+ (MSGraphIosUpdatesInstallStatus*) UnknownEnumValue {
    static MSGraphIosUpdatesInstallStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphIosUpdatesInstallStatus alloc] init];
        _unknownValue.enumValue = MSGraphIosUpdatesInstallStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphIosUpdatesInstallStatus*) iosUpdatesInstallStatusWithEnumValue:(MSGraphIosUpdatesInstallStatusValue)val {

    switch(val)
    {
        case MSGraphIosUpdatesInstallStatusSuccess:
            return [MSGraphIosUpdatesInstallStatus success];
        case MSGraphIosUpdatesInstallStatusAvailable:
            return [MSGraphIosUpdatesInstallStatus available];
        case MSGraphIosUpdatesInstallStatusIdle:
            return [MSGraphIosUpdatesInstallStatus idle];
        case MSGraphIosUpdatesInstallStatusUnknown:
            return [MSGraphIosUpdatesInstallStatus unknown];
        case MSGraphIosUpdatesInstallStatusDownloading:
            return [MSGraphIosUpdatesInstallStatus downloading];
        case MSGraphIosUpdatesInstallStatusDownloadFailed:
            return [MSGraphIosUpdatesInstallStatus downloadFailed];
        case MSGraphIosUpdatesInstallStatusDownloadRequiresComputer:
            return [MSGraphIosUpdatesInstallStatus downloadRequiresComputer];
        case MSGraphIosUpdatesInstallStatusDownloadInsufficientSpace:
            return [MSGraphIosUpdatesInstallStatus downloadInsufficientSpace];
        case MSGraphIosUpdatesInstallStatusDownloadInsufficientPower:
            return [MSGraphIosUpdatesInstallStatus downloadInsufficientPower];
        case MSGraphIosUpdatesInstallStatusDownloadInsufficientNetwork:
            return [MSGraphIosUpdatesInstallStatus downloadInsufficientNetwork];
        case MSGraphIosUpdatesInstallStatusInstalling:
            return [MSGraphIosUpdatesInstallStatus installing];
        case MSGraphIosUpdatesInstallStatusInstallInsufficientSpace:
            return [MSGraphIosUpdatesInstallStatus installInsufficientSpace];
        case MSGraphIosUpdatesInstallStatusInstallInsufficientPower:
            return [MSGraphIosUpdatesInstallStatus installInsufficientPower];
        case MSGraphIosUpdatesInstallStatusInstallPhoneCallInProgress:
            return [MSGraphIosUpdatesInstallStatus installPhoneCallInProgress];
        case MSGraphIosUpdatesInstallStatusInstallFailed:
            return [MSGraphIosUpdatesInstallStatus installFailed];
        case MSGraphIosUpdatesInstallStatusNotSupportedOperation:
            return [MSGraphIosUpdatesInstallStatus notSupportedOperation];
        case MSGraphIosUpdatesInstallStatusSharedDeviceUserLoggedInError:
            return [MSGraphIosUpdatesInstallStatus sharedDeviceUserLoggedInError];
        case MSGraphIosUpdatesInstallStatusEndOfEnum:
        default:
            return [MSGraphIosUpdatesInstallStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphIosUpdatesInstallStatusSuccess:
            return @"success";
        case MSGraphIosUpdatesInstallStatusAvailable:
            return @"available";
        case MSGraphIosUpdatesInstallStatusIdle:
            return @"idle";
        case MSGraphIosUpdatesInstallStatusUnknown:
            return @"unknown";
        case MSGraphIosUpdatesInstallStatusDownloading:
            return @"downloading";
        case MSGraphIosUpdatesInstallStatusDownloadFailed:
            return @"downloadFailed";
        case MSGraphIosUpdatesInstallStatusDownloadRequiresComputer:
            return @"downloadRequiresComputer";
        case MSGraphIosUpdatesInstallStatusDownloadInsufficientSpace:
            return @"downloadInsufficientSpace";
        case MSGraphIosUpdatesInstallStatusDownloadInsufficientPower:
            return @"downloadInsufficientPower";
        case MSGraphIosUpdatesInstallStatusDownloadInsufficientNetwork:
            return @"downloadInsufficientNetwork";
        case MSGraphIosUpdatesInstallStatusInstalling:
            return @"installing";
        case MSGraphIosUpdatesInstallStatusInstallInsufficientSpace:
            return @"installInsufficientSpace";
        case MSGraphIosUpdatesInstallStatusInstallInsufficientPower:
            return @"installInsufficientPower";
        case MSGraphIosUpdatesInstallStatusInstallPhoneCallInProgress:
            return @"installPhoneCallInProgress";
        case MSGraphIosUpdatesInstallStatusInstallFailed:
            return @"installFailed";
        case MSGraphIosUpdatesInstallStatusNotSupportedOperation:
            return @"notSupportedOperation";
        case MSGraphIosUpdatesInstallStatusSharedDeviceUserLoggedInError:
            return @"sharedDeviceUserLoggedInError";
        case MSGraphIosUpdatesInstallStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphIosUpdatesInstallStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphIosUpdatesInstallStatus)

- (MSGraphIosUpdatesInstallStatus*) toMSGraphIosUpdatesInstallStatus{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphIosUpdatesInstallStatus success];
    }
    else if([self isEqualToString:@"available"])
    {
          return [MSGraphIosUpdatesInstallStatus available];
    }
    else if([self isEqualToString:@"idle"])
    {
          return [MSGraphIosUpdatesInstallStatus idle];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphIosUpdatesInstallStatus unknown];
    }
    else if([self isEqualToString:@"downloading"])
    {
          return [MSGraphIosUpdatesInstallStatus downloading];
    }
    else if([self isEqualToString:@"downloadFailed"])
    {
          return [MSGraphIosUpdatesInstallStatus downloadFailed];
    }
    else if([self isEqualToString:@"downloadRequiresComputer"])
    {
          return [MSGraphIosUpdatesInstallStatus downloadRequiresComputer];
    }
    else if([self isEqualToString:@"downloadInsufficientSpace"])
    {
          return [MSGraphIosUpdatesInstallStatus downloadInsufficientSpace];
    }
    else if([self isEqualToString:@"downloadInsufficientPower"])
    {
          return [MSGraphIosUpdatesInstallStatus downloadInsufficientPower];
    }
    else if([self isEqualToString:@"downloadInsufficientNetwork"])
    {
          return [MSGraphIosUpdatesInstallStatus downloadInsufficientNetwork];
    }
    else if([self isEqualToString:@"installing"])
    {
          return [MSGraphIosUpdatesInstallStatus installing];
    }
    else if([self isEqualToString:@"installInsufficientSpace"])
    {
          return [MSGraphIosUpdatesInstallStatus installInsufficientSpace];
    }
    else if([self isEqualToString:@"installInsufficientPower"])
    {
          return [MSGraphIosUpdatesInstallStatus installInsufficientPower];
    }
    else if([self isEqualToString:@"installPhoneCallInProgress"])
    {
          return [MSGraphIosUpdatesInstallStatus installPhoneCallInProgress];
    }
    else if([self isEqualToString:@"installFailed"])
    {
          return [MSGraphIosUpdatesInstallStatus installFailed];
    }
    else if([self isEqualToString:@"notSupportedOperation"])
    {
          return [MSGraphIosUpdatesInstallStatus notSupportedOperation];
    }
    else if([self isEqualToString:@"sharedDeviceUserLoggedInError"])
    {
          return [MSGraphIosUpdatesInstallStatus sharedDeviceUserLoggedInError];
    }
    else {
        return [MSGraphIosUpdatesInstallStatus UnknownEnumValue];
    }
}

@end
