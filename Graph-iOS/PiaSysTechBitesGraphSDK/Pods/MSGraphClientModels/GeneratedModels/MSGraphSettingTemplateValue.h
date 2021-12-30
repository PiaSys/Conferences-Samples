// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSettingTemplateValue : MSObject

@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nullable, nonatomic, setter=setDefaultValue:, getter=defaultValue) NSString* defaultValue;
@property (nullable, nonatomic, setter=setSettingTemplateValueDescription:, getter=settingTemplateValueDescription) NSString* settingTemplateValueDescription;

@end
