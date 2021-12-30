// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermsAndConditionsAssignment, MSGraphTermsAndConditionsAcceptanceStatus; 


#import "MSGraphEntity.h"

@interface MSGraphTermsAndConditions : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setTermsAndConditionsDescription:, getter=termsAndConditionsDescription) NSString* termsAndConditionsDescription;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nullable, nonatomic, setter=setBodyText:, getter=bodyText) NSString* bodyText;
    @property (nullable, nonatomic, setter=setAcceptanceStatement:, getter=acceptanceStatement) NSString* acceptanceStatement;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
    @property (nullable, nonatomic, setter=setAcceptanceStatuses:, getter=acceptanceStatuses) NSArray* acceptanceStatuses;
  
@end
