// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMimeContent, MSGraphManagedEBookAssignment, MSGraphEBookInstallSummary, MSGraphDeviceInstallState, MSGraphUserInstallStateSummary; 


#import "MSGraphEntity.h"

@interface MSGraphManagedEBook : MSGraphEntity

  @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setManagedEBookDescription:, getter=managedEBookDescription) NSString* managedEBookDescription;
    @property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;
    @property (nonnull, nonatomic, setter=setPublishedDateTime:, getter=publishedDateTime) NSDate* publishedDateTime;
    @property (nullable, nonatomic, setter=setLargeCover:, getter=largeCover) MSGraphMimeContent* largeCover;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setInformationUrl:, getter=informationUrl) NSString* informationUrl;
    @property (nullable, nonatomic, setter=setPrivacyInformationUrl:, getter=privacyInformationUrl) NSString* privacyInformationUrl;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
    @property (nullable, nonatomic, setter=setInstallSummary:, getter=installSummary) MSGraphEBookInstallSummary* installSummary;
    @property (nullable, nonatomic, setter=setDeviceStates:, getter=deviceStates) NSArray* deviceStates;
    @property (nullable, nonatomic, setter=setUserStateSummary:, getter=userStateSummary) NSArray* userStateSummary;
  
@end
