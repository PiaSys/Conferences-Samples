// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSingleValueLegacyExtendedProperty, MSGraphMultiValueLegacyExtendedProperty, MSGraphContact; 


#import "MSGraphEntity.h"

@interface MSGraphContactFolder : MSGraphEntity

  @property (nullable, nonatomic, setter=setParentFolderId:, getter=parentFolderId) NSString* parentFolderId;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setSingleValueExtendedProperties:, getter=singleValueExtendedProperties) NSArray* singleValueExtendedProperties;
    @property (nullable, nonatomic, setter=setMultiValueExtendedProperties:, getter=multiValueExtendedProperties) NSArray* multiValueExtendedProperties;
    @property (nullable, nonatomic, setter=setContacts:, getter=contacts) NSArray* contacts;
    @property (nullable, nonatomic, setter=setChildFolders:, getter=childFolders) NSArray* childFolders;
  
@end
