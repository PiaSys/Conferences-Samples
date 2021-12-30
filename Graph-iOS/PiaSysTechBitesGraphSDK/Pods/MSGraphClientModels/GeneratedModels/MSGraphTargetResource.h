// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphModifiedProperty; 
#import "MSGraphGroupType.h"


#import "MSObject.h"

@interface MSGraphTargetResource : MSObject

@property (nullable, nonatomic, setter=setTargetResourceId:, getter=targetResourceId) NSString* targetResourceId;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
@property (nullable, nonatomic, setter=setGroupType:, getter=groupType) MSGraphGroupType* groupType;
@property (nullable, nonatomic, setter=setModifiedProperties:, getter=modifiedProperties) NSArray* modifiedProperties;

@end
