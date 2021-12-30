// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceDetail : MSObject

@property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setOperatingSystem:, getter=operatingSystem) NSString* operatingSystem;
@property (nullable, nonatomic, setter=setBrowser:, getter=browser) NSString* browser;
@property (nonatomic, setter=setIsCompliant:, getter=isCompliant) BOOL isCompliant;
@property (nonatomic, setter=setIsManaged:, getter=isManaged) BOOL isManaged;
@property (nullable, nonatomic, setter=setTrustType:, getter=trustType) NSString* trustType;

@end
