// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDate; 


#import "MSObject.h"

@interface MSGraphEducationTerm : MSObject

@property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
@property (nullable, nonatomic, setter=setStartDate:, getter=startDate) MSDate* startDate;
@property (nullable, nonatomic, setter=setEndDate:, getter=endDate) MSDate* endDate;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;

@end
