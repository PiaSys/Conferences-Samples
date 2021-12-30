// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSettingSource : MSObject

@property (nullable, nonatomic, setter=setSettingSourceId:, getter=settingSourceId) NSString* settingSourceId;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;

@end
