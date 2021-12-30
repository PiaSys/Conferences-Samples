// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphOmaSetting.h"

@interface MSGraphOmaSettingBase64 : MSGraphOmaSetting

@property (nullable, nonatomic, setter=setFileName:, getter=fileName) NSString* fileName;
@property (nonnull, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
