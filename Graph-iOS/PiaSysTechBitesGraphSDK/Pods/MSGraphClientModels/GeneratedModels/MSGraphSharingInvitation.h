// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphSharingInvitation : MSObject

@property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
@property (nullable, nonatomic, setter=setInvitedBy:, getter=invitedBy) MSGraphIdentitySet* invitedBy;
@property (nullable, nonatomic, setter=setRedeemedBy:, getter=redeemedBy) NSString* redeemedBy;
@property (nonatomic, setter=setSignInRequired:, getter=signInRequired) BOOL signInRequired;

@end
