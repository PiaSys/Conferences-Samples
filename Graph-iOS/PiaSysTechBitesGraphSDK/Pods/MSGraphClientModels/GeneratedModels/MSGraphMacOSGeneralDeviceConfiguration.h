// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppListItem; 
#import "MSGraphAppListType.h"
#import "MSGraphRequiredPasswordType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphMacOSGeneralDeviceConfiguration : MSGraphDeviceConfiguration

  @property (nullable, nonatomic, setter=setCompliantAppsList:, getter=compliantAppsList) NSArray* compliantAppsList;
    @property (nonnull, nonatomic, setter=setCompliantAppListType:, getter=compliantAppListType) MSGraphAppListType* compliantAppListType;
    @property (nullable, nonatomic, setter=setEmailInDomainSuffixes:, getter=emailInDomainSuffixes) NSArray* emailInDomainSuffixes;
    @property (nonatomic, setter=setPasswordBlockSimple:, getter=passwordBlockSimple) BOOL passwordBlockSimple;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumCharacterSetCount:, getter=passwordMinimumCharacterSetCount) int32_t passwordMinimumCharacterSetCount;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeLock:, getter=passwordMinutesOfInactivityBeforeLock) int32_t passwordMinutesOfInactivityBeforeLock;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeScreenTimeout:, getter=passwordMinutesOfInactivityBeforeScreenTimeout) int32_t passwordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
  
@end
