// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDefenderMonitorFileActivity.h"

@interface MSGraphDefenderMonitorFileActivity () {
    MSGraphDefenderMonitorFileActivityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDefenderMonitorFileActivityValue enumValue;
@end

@implementation MSGraphDefenderMonitorFileActivity

+ (MSGraphDefenderMonitorFileActivity*) userDefined {
    static MSGraphDefenderMonitorFileActivity *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphDefenderMonitorFileActivity alloc] init];
        _userDefined.enumValue = MSGraphDefenderMonitorFileActivityUserDefined;
    });
    return _userDefined;
}
+ (MSGraphDefenderMonitorFileActivity*) disable {
    static MSGraphDefenderMonitorFileActivity *_disable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disable = [[MSGraphDefenderMonitorFileActivity alloc] init];
        _disable.enumValue = MSGraphDefenderMonitorFileActivityDisable;
    });
    return _disable;
}
+ (MSGraphDefenderMonitorFileActivity*) monitorAllFiles {
    static MSGraphDefenderMonitorFileActivity *_monitorAllFiles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _monitorAllFiles = [[MSGraphDefenderMonitorFileActivity alloc] init];
        _monitorAllFiles.enumValue = MSGraphDefenderMonitorFileActivityMonitorAllFiles;
    });
    return _monitorAllFiles;
}
+ (MSGraphDefenderMonitorFileActivity*) monitorIncomingFilesOnly {
    static MSGraphDefenderMonitorFileActivity *_monitorIncomingFilesOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _monitorIncomingFilesOnly = [[MSGraphDefenderMonitorFileActivity alloc] init];
        _monitorIncomingFilesOnly.enumValue = MSGraphDefenderMonitorFileActivityMonitorIncomingFilesOnly;
    });
    return _monitorIncomingFilesOnly;
}
+ (MSGraphDefenderMonitorFileActivity*) monitorOutgoingFilesOnly {
    static MSGraphDefenderMonitorFileActivity *_monitorOutgoingFilesOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _monitorOutgoingFilesOnly = [[MSGraphDefenderMonitorFileActivity alloc] init];
        _monitorOutgoingFilesOnly.enumValue = MSGraphDefenderMonitorFileActivityMonitorOutgoingFilesOnly;
    });
    return _monitorOutgoingFilesOnly;
}

+ (MSGraphDefenderMonitorFileActivity*) UnknownEnumValue {
    static MSGraphDefenderMonitorFileActivity *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDefenderMonitorFileActivity alloc] init];
        _unknownValue.enumValue = MSGraphDefenderMonitorFileActivityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDefenderMonitorFileActivity*) defenderMonitorFileActivityWithEnumValue:(MSGraphDefenderMonitorFileActivityValue)val {

    switch(val)
    {
        case MSGraphDefenderMonitorFileActivityUserDefined:
            return [MSGraphDefenderMonitorFileActivity userDefined];
        case MSGraphDefenderMonitorFileActivityDisable:
            return [MSGraphDefenderMonitorFileActivity disable];
        case MSGraphDefenderMonitorFileActivityMonitorAllFiles:
            return [MSGraphDefenderMonitorFileActivity monitorAllFiles];
        case MSGraphDefenderMonitorFileActivityMonitorIncomingFilesOnly:
            return [MSGraphDefenderMonitorFileActivity monitorIncomingFilesOnly];
        case MSGraphDefenderMonitorFileActivityMonitorOutgoingFilesOnly:
            return [MSGraphDefenderMonitorFileActivity monitorOutgoingFilesOnly];
        case MSGraphDefenderMonitorFileActivityEndOfEnum:
        default:
            return [MSGraphDefenderMonitorFileActivity UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDefenderMonitorFileActivityUserDefined:
            return @"userDefined";
        case MSGraphDefenderMonitorFileActivityDisable:
            return @"disable";
        case MSGraphDefenderMonitorFileActivityMonitorAllFiles:
            return @"monitorAllFiles";
        case MSGraphDefenderMonitorFileActivityMonitorIncomingFilesOnly:
            return @"monitorIncomingFilesOnly";
        case MSGraphDefenderMonitorFileActivityMonitorOutgoingFilesOnly:
            return @"monitorOutgoingFilesOnly";
        case MSGraphDefenderMonitorFileActivityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDefenderMonitorFileActivityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDefenderMonitorFileActivity)

- (MSGraphDefenderMonitorFileActivity*) toMSGraphDefenderMonitorFileActivity{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphDefenderMonitorFileActivity userDefined];
    }
    else if([self isEqualToString:@"disable"])
    {
          return [MSGraphDefenderMonitorFileActivity disable];
    }
    else if([self isEqualToString:@"monitorAllFiles"])
    {
          return [MSGraphDefenderMonitorFileActivity monitorAllFiles];
    }
    else if([self isEqualToString:@"monitorIncomingFilesOnly"])
    {
          return [MSGraphDefenderMonitorFileActivity monitorIncomingFilesOnly];
    }
    else if([self isEqualToString:@"monitorOutgoingFilesOnly"])
    {
          return [MSGraphDefenderMonitorFileActivity monitorOutgoingFilesOnly];
    }
    else {
        return [MSGraphDefenderMonitorFileActivity UnknownEnumValue];
    }
}

@end
