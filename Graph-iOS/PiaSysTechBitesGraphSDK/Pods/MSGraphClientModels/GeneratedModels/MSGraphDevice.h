// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAlternativeSecurityId, MSGraphDirectoryObject, MSGraphExtension; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphDevice : MSGraphDirectoryObject

  @property (nonatomic, setter=setAccountEnabled:, getter=accountEnabled) BOOL accountEnabled;
    @property (nonnull, nonatomic, setter=setAlternativeSecurityIds:, getter=alternativeSecurityIds) NSArray* alternativeSecurityIds;
    @property (nullable, nonatomic, setter=setApproximateLastSignInDateTime:, getter=approximateLastSignInDateTime) NSDate* approximateLastSignInDateTime;
    @property (nullable, nonatomic, setter=setComplianceExpirationDateTime:, getter=complianceExpirationDateTime) NSDate* complianceExpirationDateTime;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nullable, nonatomic, setter=setDeviceMetadata:, getter=deviceMetadata) NSString* deviceMetadata;
    @property (nonatomic, setter=setDeviceVersion:, getter=deviceVersion) int32_t deviceVersion;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsCompliant:, getter=isCompliant) BOOL isCompliant;
    @property (nonatomic, setter=setIsManaged:, getter=isManaged) BOOL isManaged;
    @property (nullable, nonatomic, setter=setOnPremisesLastSyncDateTime:, getter=onPremisesLastSyncDateTime) NSDate* onPremisesLastSyncDateTime;
    @property (nonatomic, setter=setOnPremisesSyncEnabled:, getter=onPremisesSyncEnabled) BOOL onPremisesSyncEnabled;
    @property (nullable, nonatomic, setter=setOperatingSystem:, getter=operatingSystem) NSString* operatingSystem;
    @property (nullable, nonatomic, setter=setOperatingSystemVersion:, getter=operatingSystemVersion) NSString* operatingSystemVersion;
    @property (nonnull, nonatomic, setter=setPhysicalIds:, getter=physicalIds) NSArray* physicalIds;
    @property (nullable, nonatomic, setter=setProfileType:, getter=profileType) NSString* profileType;
    @property (nonnull, nonatomic, setter=setSystemLabels:, getter=systemLabels) NSArray* systemLabels;
    @property (nullable, nonatomic, setter=setTrustType:, getter=trustType) NSString* trustType;
    @property (nullable, nonatomic, setter=setMemberOf:, getter=memberOf) NSArray* memberOf;
    @property (nullable, nonatomic, setter=setRegisteredOwners:, getter=registeredOwners) NSArray* registeredOwners;
    @property (nullable, nonatomic, setter=setRegisteredUsers:, getter=registeredUsers) NSArray* registeredUsers;
    @property (nullable, nonatomic, setter=setTransitiveMemberOf:, getter=transitiveMemberOf) NSArray* transitiveMemberOf;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
  
@end
