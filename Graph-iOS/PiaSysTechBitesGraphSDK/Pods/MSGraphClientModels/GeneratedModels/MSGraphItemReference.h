// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSharepointIds; 


#import "MSObject.h"

@interface MSGraphItemReference : MSObject

@property (nullable, nonatomic, setter=setDriveId:, getter=driveId) NSString* driveId;
@property (nullable, nonatomic, setter=setDriveType:, getter=driveType) NSString* driveType;
@property (nullable, nonatomic, setter=setItemReferenceId:, getter=itemReferenceId) NSString* itemReferenceId;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setPath:, getter=path) NSString* path;
@property (nullable, nonatomic, setter=setShareId:, getter=shareId) NSString* shareId;
@property (nullable, nonatomic, setter=setSharepointIds:, getter=sharepointIds) MSGraphSharepointIds* sharepointIds;
@property (nullable, nonatomic, setter=setSiteId:, getter=siteId) NSString* siteId;

@end
