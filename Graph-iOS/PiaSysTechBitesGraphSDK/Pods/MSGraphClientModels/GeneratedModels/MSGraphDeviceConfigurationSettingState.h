// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSettingSource; 
#import "MSGraphComplianceStatus.h"


#import "MSObject.h"

@interface MSGraphDeviceConfigurationSettingState : MSObject

@property (nullable, nonatomic, setter=setSetting:, getter=setting) NSString* setting;
@property (nullable, nonatomic, setter=setSettingName:, getter=settingName) NSString* settingName;
@property (nullable, nonatomic, setter=setInstanceDisplayName:, getter=instanceDisplayName) NSString* instanceDisplayName;
@property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphComplianceStatus* state;
@property (nonatomic, setter=setErrorCode:, getter=errorCode) int64_t errorCode;
@property (nullable, nonatomic, setter=setErrorDescription:, getter=errorDescription) NSString* errorDescription;
@property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
@property (nullable, nonatomic, setter=setUserName:, getter=userName) NSString* userName;
@property (nullable, nonatomic, setter=setUserEmail:, getter=userEmail) NSString* userEmail;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
@property (nullable, nonatomic, setter=setSources:, getter=sources) NSArray* sources;
@property (nullable, nonatomic, setter=setCurrentValue:, getter=currentValue) NSString* currentValue;

@end
