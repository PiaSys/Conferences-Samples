// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagementAgentType.h"

@interface MSGraphManagementAgentType () {
    MSGraphManagementAgentTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagementAgentTypeValue enumValue;
@end

@implementation MSGraphManagementAgentType

+ (MSGraphManagementAgentType*) eas {
    static MSGraphManagementAgentType *_eas;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _eas = [[MSGraphManagementAgentType alloc] init];
        _eas.enumValue = MSGraphManagementAgentTypeEas;
    });
    return _eas;
}
+ (MSGraphManagementAgentType*) mdm {
    static MSGraphManagementAgentType *_mdm;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mdm = [[MSGraphManagementAgentType alloc] init];
        _mdm.enumValue = MSGraphManagementAgentTypeMdm;
    });
    return _mdm;
}
+ (MSGraphManagementAgentType*) easMdm {
    static MSGraphManagementAgentType *_easMdm;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _easMdm = [[MSGraphManagementAgentType alloc] init];
        _easMdm.enumValue = MSGraphManagementAgentTypeEasMdm;
    });
    return _easMdm;
}
+ (MSGraphManagementAgentType*) intuneClient {
    static MSGraphManagementAgentType *_intuneClient;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _intuneClient = [[MSGraphManagementAgentType alloc] init];
        _intuneClient.enumValue = MSGraphManagementAgentTypeIntuneClient;
    });
    return _intuneClient;
}
+ (MSGraphManagementAgentType*) easIntuneClient {
    static MSGraphManagementAgentType *_easIntuneClient;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _easIntuneClient = [[MSGraphManagementAgentType alloc] init];
        _easIntuneClient.enumValue = MSGraphManagementAgentTypeEasIntuneClient;
    });
    return _easIntuneClient;
}
+ (MSGraphManagementAgentType*) configurationManagerClient {
    static MSGraphManagementAgentType *_configurationManagerClient;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _configurationManagerClient = [[MSGraphManagementAgentType alloc] init];
        _configurationManagerClient.enumValue = MSGraphManagementAgentTypeConfigurationManagerClient;
    });
    return _configurationManagerClient;
}
+ (MSGraphManagementAgentType*) configurationManagerClientMdm {
    static MSGraphManagementAgentType *_configurationManagerClientMdm;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _configurationManagerClientMdm = [[MSGraphManagementAgentType alloc] init];
        _configurationManagerClientMdm.enumValue = MSGraphManagementAgentTypeConfigurationManagerClientMdm;
    });
    return _configurationManagerClientMdm;
}
+ (MSGraphManagementAgentType*) configurationManagerClientMdmEas {
    static MSGraphManagementAgentType *_configurationManagerClientMdmEas;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _configurationManagerClientMdmEas = [[MSGraphManagementAgentType alloc] init];
        _configurationManagerClientMdmEas.enumValue = MSGraphManagementAgentTypeConfigurationManagerClientMdmEas;
    });
    return _configurationManagerClientMdmEas;
}
+ (MSGraphManagementAgentType*) unknown {
    static MSGraphManagementAgentType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphManagementAgentType alloc] init];
        _unknown.enumValue = MSGraphManagementAgentTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphManagementAgentType*) jamf {
    static MSGraphManagementAgentType *_jamf;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _jamf = [[MSGraphManagementAgentType alloc] init];
        _jamf.enumValue = MSGraphManagementAgentTypeJamf;
    });
    return _jamf;
}
+ (MSGraphManagementAgentType*) googleCloudDevicePolicyController {
    static MSGraphManagementAgentType *_googleCloudDevicePolicyController;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _googleCloudDevicePolicyController = [[MSGraphManagementAgentType alloc] init];
        _googleCloudDevicePolicyController.enumValue = MSGraphManagementAgentTypeGoogleCloudDevicePolicyController;
    });
    return _googleCloudDevicePolicyController;
}

+ (MSGraphManagementAgentType*) UnknownEnumValue {
    static MSGraphManagementAgentType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagementAgentType alloc] init];
        _unknownValue.enumValue = MSGraphManagementAgentTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagementAgentType*) managementAgentTypeWithEnumValue:(MSGraphManagementAgentTypeValue)val {

    switch(val)
    {
        case MSGraphManagementAgentTypeEas:
            return [MSGraphManagementAgentType eas];
        case MSGraphManagementAgentTypeMdm:
            return [MSGraphManagementAgentType mdm];
        case MSGraphManagementAgentTypeEasMdm:
            return [MSGraphManagementAgentType easMdm];
        case MSGraphManagementAgentTypeIntuneClient:
            return [MSGraphManagementAgentType intuneClient];
        case MSGraphManagementAgentTypeEasIntuneClient:
            return [MSGraphManagementAgentType easIntuneClient];
        case MSGraphManagementAgentTypeConfigurationManagerClient:
            return [MSGraphManagementAgentType configurationManagerClient];
        case MSGraphManagementAgentTypeConfigurationManagerClientMdm:
            return [MSGraphManagementAgentType configurationManagerClientMdm];
        case MSGraphManagementAgentTypeConfigurationManagerClientMdmEas:
            return [MSGraphManagementAgentType configurationManagerClientMdmEas];
        case MSGraphManagementAgentTypeUnknown:
            return [MSGraphManagementAgentType unknown];
        case MSGraphManagementAgentTypeJamf:
            return [MSGraphManagementAgentType jamf];
        case MSGraphManagementAgentTypeGoogleCloudDevicePolicyController:
            return [MSGraphManagementAgentType googleCloudDevicePolicyController];
        case MSGraphManagementAgentTypeEndOfEnum:
        default:
            return [MSGraphManagementAgentType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagementAgentTypeEas:
            return @"eas";
        case MSGraphManagementAgentTypeMdm:
            return @"mdm";
        case MSGraphManagementAgentTypeEasMdm:
            return @"easMdm";
        case MSGraphManagementAgentTypeIntuneClient:
            return @"intuneClient";
        case MSGraphManagementAgentTypeEasIntuneClient:
            return @"easIntuneClient";
        case MSGraphManagementAgentTypeConfigurationManagerClient:
            return @"configurationManagerClient";
        case MSGraphManagementAgentTypeConfigurationManagerClientMdm:
            return @"configurationManagerClientMdm";
        case MSGraphManagementAgentTypeConfigurationManagerClientMdmEas:
            return @"configurationManagerClientMdmEas";
        case MSGraphManagementAgentTypeUnknown:
            return @"unknown";
        case MSGraphManagementAgentTypeJamf:
            return @"jamf";
        case MSGraphManagementAgentTypeGoogleCloudDevicePolicyController:
            return @"googleCloudDevicePolicyController";
        case MSGraphManagementAgentTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagementAgentTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagementAgentType)

- (MSGraphManagementAgentType*) toMSGraphManagementAgentType{

    if([self isEqualToString:@"eas"])
    {
          return [MSGraphManagementAgentType eas];
    }
    else if([self isEqualToString:@"mdm"])
    {
          return [MSGraphManagementAgentType mdm];
    }
    else if([self isEqualToString:@"easMdm"])
    {
          return [MSGraphManagementAgentType easMdm];
    }
    else if([self isEqualToString:@"intuneClient"])
    {
          return [MSGraphManagementAgentType intuneClient];
    }
    else if([self isEqualToString:@"easIntuneClient"])
    {
          return [MSGraphManagementAgentType easIntuneClient];
    }
    else if([self isEqualToString:@"configurationManagerClient"])
    {
          return [MSGraphManagementAgentType configurationManagerClient];
    }
    else if([self isEqualToString:@"configurationManagerClientMdm"])
    {
          return [MSGraphManagementAgentType configurationManagerClientMdm];
    }
    else if([self isEqualToString:@"configurationManagerClientMdmEas"])
    {
          return [MSGraphManagementAgentType configurationManagerClientMdmEas];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphManagementAgentType unknown];
    }
    else if([self isEqualToString:@"jamf"])
    {
          return [MSGraphManagementAgentType jamf];
    }
    else if([self isEqualToString:@"googleCloudDevicePolicyController"])
    {
          return [MSGraphManagementAgentType googleCloudDevicePolicyController];
    }
    else {
        return [MSGraphManagementAgentType UnknownEnumValue];
    }
}

@end
