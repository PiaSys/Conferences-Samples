// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagementAgentTypeValue){

	MSGraphManagementAgentTypeEas = 1,
	MSGraphManagementAgentTypeMdm = 2,
	MSGraphManagementAgentTypeEasMdm = 3,
	MSGraphManagementAgentTypeIntuneClient = 4,
	MSGraphManagementAgentTypeEasIntuneClient = 5,
	MSGraphManagementAgentTypeConfigurationManagerClient = 8,
	MSGraphManagementAgentTypeConfigurationManagerClientMdm = 10,
	MSGraphManagementAgentTypeConfigurationManagerClientMdmEas = 11,
	MSGraphManagementAgentTypeUnknown = 16,
	MSGraphManagementAgentTypeJamf = 32,
	MSGraphManagementAgentTypeGoogleCloudDevicePolicyController = 64,
    MSGraphManagementAgentTypeEndOfEnum
};

@interface MSGraphManagementAgentType : NSObject

+(MSGraphManagementAgentType*) eas;
+(MSGraphManagementAgentType*) mdm;
+(MSGraphManagementAgentType*) easMdm;
+(MSGraphManagementAgentType*) intuneClient;
+(MSGraphManagementAgentType*) easIntuneClient;
+(MSGraphManagementAgentType*) configurationManagerClient;
+(MSGraphManagementAgentType*) configurationManagerClientMdm;
+(MSGraphManagementAgentType*) configurationManagerClientMdmEas;
+(MSGraphManagementAgentType*) unknown;
+(MSGraphManagementAgentType*) jamf;
+(MSGraphManagementAgentType*) googleCloudDevicePolicyController;

+(MSGraphManagementAgentType*) UnknownEnumValue;

+(MSGraphManagementAgentType*) managementAgentTypeWithEnumValue:(MSGraphManagementAgentTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagementAgentTypeValue enumValue;

@end


@interface NSString (MSGraphManagementAgentType)

- (MSGraphManagementAgentType*) toMSGraphManagementAgentType;

@end
