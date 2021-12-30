// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphOmaSetting : MSObject

@property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setOmaSettingDescription:, getter=omaSettingDescription) NSString* omaSettingDescription;
@property (nonnull, nonatomic, setter=setOmaUri:, getter=omaUri) NSString* omaUri;

@end
