// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWindowsMinimumOperatingSystem; 
#import "MSGraphWindowsArchitecture.h"
#import "MSGraphWindowsDeviceType.h"


#import "MSGraphMobileLobApp.h"

@interface MSGraphWindowsUniversalAppX : MSGraphMobileLobApp

  @property (nonnull, nonatomic, setter=setApplicableArchitectures:, getter=applicableArchitectures) MSGraphWindowsArchitecture* applicableArchitectures;
    @property (nonnull, nonatomic, setter=setApplicableDeviceTypes:, getter=applicableDeviceTypes) MSGraphWindowsDeviceType* applicableDeviceTypes;
    @property (nullable, nonatomic, setter=setIdentityName:, getter=identityName) NSString* identityName;
    @property (nonnull, nonatomic, setter=setIdentityPublisherHash:, getter=identityPublisherHash) NSString* identityPublisherHash;
    @property (nullable, nonatomic, setter=setIdentityResourceIdentifier:, getter=identityResourceIdentifier) NSString* identityResourceIdentifier;
    @property (nonatomic, setter=setIsBundle:, getter=isBundle) BOOL isBundle;
    @property (nonnull, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphWindowsMinimumOperatingSystem* minimumSupportedOperatingSystem;
    @property (nullable, nonatomic, setter=setIdentityVersion:, getter=identityVersion) NSString* identityVersion;
  
@end
