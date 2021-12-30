// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermsAndConditions; 


#import "MSGraphEntity.h"

@interface MSGraphTermsAndConditionsAcceptanceStatus : MSGraphEntity

  @property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
    @property (nonatomic, setter=setAcceptedVersion:, getter=acceptedVersion) int32_t acceptedVersion;
    @property (nonnull, nonatomic, setter=setAcceptedDateTime:, getter=acceptedDateTime) NSDate* acceptedDateTime;
    @property (nullable, nonatomic, setter=setTermsAndConditions:, getter=termsAndConditions) MSGraphTermsAndConditions* termsAndConditions;
  
@end
