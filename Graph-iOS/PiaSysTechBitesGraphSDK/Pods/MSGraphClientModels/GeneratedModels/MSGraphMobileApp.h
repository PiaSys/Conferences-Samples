// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMimeContent, MSGraphMobileAppCategory, MSGraphMobileAppAssignment; 
#import "MSGraphMobileAppPublishingState.h"


#import "MSGraphEntity.h"

@interface MSGraphMobileApp : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setMobileAppDescription:, getter=mobileAppDescription) NSString* mobileAppDescription;
    @property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;
    @property (nullable, nonatomic, setter=setLargeIcon:, getter=largeIcon) MSGraphMimeContent* largeIcon;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonatomic, setter=setIsFeatured:, getter=isFeatured) BOOL isFeatured;
    @property (nullable, nonatomic, setter=setPrivacyInformationUrl:, getter=privacyInformationUrl) NSString* privacyInformationUrl;
    @property (nullable, nonatomic, setter=setInformationUrl:, getter=informationUrl) NSString* informationUrl;
    @property (nullable, nonatomic, setter=setOwner:, getter=owner) NSString* owner;
    @property (nullable, nonatomic, setter=setDeveloper:, getter=developer) NSString* developer;
    @property (nullable, nonatomic, setter=setNotes:, getter=notes) NSString* notes;
    @property (nonnull, nonatomic, setter=setPublishingState:, getter=publishingState) MSGraphMobileAppPublishingState* publishingState;
    @property (nullable, nonatomic, setter=setCategories:, getter=categories) NSArray* categories;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
  
@end
