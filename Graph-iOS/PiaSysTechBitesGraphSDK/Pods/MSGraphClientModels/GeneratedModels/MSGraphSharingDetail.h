// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphInsightIdentity, MSGraphResourceReference; 


#import "MSObject.h"

@interface MSGraphSharingDetail : MSObject

@property (nullable, nonatomic, setter=setSharedBy:, getter=sharedBy) MSGraphInsightIdentity* sharedBy;
@property (nullable, nonatomic, setter=setSharedDateTime:, getter=sharedDateTime) NSDate* sharedDateTime;
@property (nullable, nonatomic, setter=setSharingSubject:, getter=sharingSubject) NSString* sharingSubject;
@property (nullable, nonatomic, setter=setSharingType:, getter=sharingType) NSString* sharingType;
@property (nullable, nonatomic, setter=setSharingReference:, getter=sharingReference) MSGraphResourceReference* sharingReference;

@end
