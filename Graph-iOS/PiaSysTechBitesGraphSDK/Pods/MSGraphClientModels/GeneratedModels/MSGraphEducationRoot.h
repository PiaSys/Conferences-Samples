// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationClass, MSGraphEducationSchool, MSGraphEducationUser; 


#import "MSGraphEntity.h"

@interface MSGraphEducationRoot : MSGraphEntity

  @property (nullable, nonatomic, setter=setClasses:, getter=classes) NSArray* classes;
    @property (nullable, nonatomic, setter=setSchools:, getter=schools) NSArray* schools;
    @property (nullable, nonatomic, setter=setUsers:, getter=users) NSArray* users;
    @property (nullable, nonatomic, setter=setMe:, getter=me) MSGraphEducationUser* me;
  
@end
