// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphOmaSetting.h"

@interface MSGraphOmaSettingString : MSGraphOmaSetting

@property (nonnull, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
