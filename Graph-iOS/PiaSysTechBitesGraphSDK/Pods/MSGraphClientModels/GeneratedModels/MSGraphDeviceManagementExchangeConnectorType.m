// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementExchangeConnectorType.h"

@interface MSGraphDeviceManagementExchangeConnectorType () {
    MSGraphDeviceManagementExchangeConnectorTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementExchangeConnectorTypeValue enumValue;
@end

@implementation MSGraphDeviceManagementExchangeConnectorType

+ (MSGraphDeviceManagementExchangeConnectorType*) onPremises {
    static MSGraphDeviceManagementExchangeConnectorType *_onPremises;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _onPremises = [[MSGraphDeviceManagementExchangeConnectorType alloc] init];
        _onPremises.enumValue = MSGraphDeviceManagementExchangeConnectorTypeOnPremises;
    });
    return _onPremises;
}
+ (MSGraphDeviceManagementExchangeConnectorType*) hosted {
    static MSGraphDeviceManagementExchangeConnectorType *_hosted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hosted = [[MSGraphDeviceManagementExchangeConnectorType alloc] init];
        _hosted.enumValue = MSGraphDeviceManagementExchangeConnectorTypeHosted;
    });
    return _hosted;
}
+ (MSGraphDeviceManagementExchangeConnectorType*) serviceToService {
    static MSGraphDeviceManagementExchangeConnectorType *_serviceToService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceToService = [[MSGraphDeviceManagementExchangeConnectorType alloc] init];
        _serviceToService.enumValue = MSGraphDeviceManagementExchangeConnectorTypeServiceToService;
    });
    return _serviceToService;
}
+ (MSGraphDeviceManagementExchangeConnectorType*) dedicated {
    static MSGraphDeviceManagementExchangeConnectorType *_dedicated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dedicated = [[MSGraphDeviceManagementExchangeConnectorType alloc] init];
        _dedicated.enumValue = MSGraphDeviceManagementExchangeConnectorTypeDedicated;
    });
    return _dedicated;
}

+ (MSGraphDeviceManagementExchangeConnectorType*) UnknownEnumValue {
    static MSGraphDeviceManagementExchangeConnectorType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementExchangeConnectorType alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementExchangeConnectorTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementExchangeConnectorType*) deviceManagementExchangeConnectorTypeWithEnumValue:(MSGraphDeviceManagementExchangeConnectorTypeValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementExchangeConnectorTypeOnPremises:
            return [MSGraphDeviceManagementExchangeConnectorType onPremises];
        case MSGraphDeviceManagementExchangeConnectorTypeHosted:
            return [MSGraphDeviceManagementExchangeConnectorType hosted];
        case MSGraphDeviceManagementExchangeConnectorTypeServiceToService:
            return [MSGraphDeviceManagementExchangeConnectorType serviceToService];
        case MSGraphDeviceManagementExchangeConnectorTypeDedicated:
            return [MSGraphDeviceManagementExchangeConnectorType dedicated];
        case MSGraphDeviceManagementExchangeConnectorTypeEndOfEnum:
        default:
            return [MSGraphDeviceManagementExchangeConnectorType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementExchangeConnectorTypeOnPremises:
            return @"onPremises";
        case MSGraphDeviceManagementExchangeConnectorTypeHosted:
            return @"hosted";
        case MSGraphDeviceManagementExchangeConnectorTypeServiceToService:
            return @"serviceToService";
        case MSGraphDeviceManagementExchangeConnectorTypeDedicated:
            return @"dedicated";
        case MSGraphDeviceManagementExchangeConnectorTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementExchangeConnectorTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementExchangeConnectorType)

- (MSGraphDeviceManagementExchangeConnectorType*) toMSGraphDeviceManagementExchangeConnectorType{

    if([self isEqualToString:@"onPremises"])
    {
          return [MSGraphDeviceManagementExchangeConnectorType onPremises];
    }
    else if([self isEqualToString:@"hosted"])
    {
          return [MSGraphDeviceManagementExchangeConnectorType hosted];
    }
    else if([self isEqualToString:@"serviceToService"])
    {
          return [MSGraphDeviceManagementExchangeConnectorType serviceToService];
    }
    else if([self isEqualToString:@"dedicated"])
    {
          return [MSGraphDeviceManagementExchangeConnectorType dedicated];
    }
    else {
        return [MSGraphDeviceManagementExchangeConnectorType UnknownEnumValue];
    }
}

@end
