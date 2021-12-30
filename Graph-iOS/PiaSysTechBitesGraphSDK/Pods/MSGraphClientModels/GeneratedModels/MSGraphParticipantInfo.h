// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphParticipantInfo : MSObject

@property (nonnull, nonatomic, setter=setIdentity:, getter=identity) MSGraphIdentitySet* identity;
@property (nullable, nonatomic, setter=setRegion:, getter=region) NSString* region;
@property (nullable, nonatomic, setter=setLanguageId:, getter=languageId) NSString* languageId;

@end
