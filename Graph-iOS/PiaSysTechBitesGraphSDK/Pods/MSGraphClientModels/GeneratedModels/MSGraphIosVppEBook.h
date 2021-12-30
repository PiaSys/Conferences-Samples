// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphManagedEBook.h"

@interface MSGraphIosVppEBook : MSGraphManagedEBook

  @property (nonnull, nonatomic, setter=setVppTokenId:, getter=vppTokenId) NSString* vppTokenId;
    @property (nullable, nonatomic, setter=setAppleId:, getter=appleId) NSString* appleId;
    @property (nullable, nonatomic, setter=setVppOrganizationName:, getter=vppOrganizationName) NSString* vppOrganizationName;
    @property (nullable, nonatomic, setter=setGenres:, getter=genres) NSArray* genres;
    @property (nullable, nonatomic, setter=setLanguage:, getter=language) NSString* language;
    @property (nullable, nonatomic, setter=setSeller:, getter=seller) NSString* seller;
    @property (nonatomic, setter=setTotalLicenseCount:, getter=totalLicenseCount) int32_t totalLicenseCount;
    @property (nonatomic, setter=setUsedLicenseCount:, getter=usedLicenseCount) int32_t usedLicenseCount;
  
@end
