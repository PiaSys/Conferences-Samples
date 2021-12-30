// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementExchangeConnectorSyncType.h"

@interface MSGraphDeviceManagementExchangeConnectorSyncType () {
    MSGraphDeviceManagementExchangeConnectorSyncTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementExchangeConnectorSyncTypeValue enumValue;
@end

@implementation MSGraphDeviceManagementExchangeConnectorSyncType

+ (MSGraphDeviceManagementExchangeConnectorSyncType*) fullSync {
    static MSGraphDeviceManagementExchangeConnectorSyncType *_fullSync;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fullSync = [[MSGraphDeviceManagementExchangeConnectorSyncType alloc] init];
        _fullSync.enumValue = MSGraphDeviceManagementExchangeConnectorSyncTypeFullSync;
    });
    return _fullSync;
}
+ (MSGraphDeviceManagementExchangeConnectorSyncType*) deltaSync {
    static MSGraphDeviceManagementExchangeConnectorSyncType *_deltaSync;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deltaSync = [[MSGraphDeviceManagementExchangeConnectorSyncType alloc] init];
        _deltaSync.enumValue = MSGraphDeviceManagementExchangeConnectorSyncTypeDeltaSync;
    });
    return _deltaSync;
}

+ (MSGraphDeviceManagementExchangeConnectorSyncType*) UnknownEnumValue {
    static MSGraphDeviceManagementExchangeConnectorSyncType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementExchangeConnectorSyncType alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementExchangeConnectorSyncTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementExchangeConnectorSyncType*) deviceManagementExchangeConnectorSyncTypeWithEnumValue:(MSGraphDeviceManagementExchangeConnectorSyncTypeValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementExchangeConnectorSyncTypeFullSync:
            return [MSGraphDeviceManagementExchangeConnectorSyncType fullSync];
        case MSGraphDeviceManagementExchangeConnectorSyncTypeDeltaSync:
            return [MSGraphDeviceManagementExchangeConnectorSyncType deltaSync];
        case MSGraphDeviceManagementExchangeConnectorSyncTypeEndOfEnum:
        default:
            return [MSGraphDeviceManagementExchangeConnectorSyncType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementExchangeConnectorSyncTypeFullSync:
            return @"fullSync";
        case MSGraphDeviceManagementExchangeConnectorSyncTypeDeltaSync:
            return @"deltaSync";
        case MSGraphDeviceManagementExchangeConnectorSyncTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementExchangeConnectorSyncTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementExchangeConnectorSyncType)

- (MSGraphDeviceManagementExchangeConnectorSyncType*) toMSGraphDeviceManagementExchangeConnectorSyncType{

    if([self isEqualToString:@"fullSync"])
    {
          return [MSGraphDeviceManagementExchangeConnectorSyncType fullSync];
    }
    else if([self isEqualToString:@"deltaSync"])
    {
          return [MSGraphDeviceManagementExchangeConnectorSyncType deltaSync];
    }
    else {
        return [MSGraphDeviceManagementExchangeConnectorSyncType UnknownEnumValue];
    }
}

@end
