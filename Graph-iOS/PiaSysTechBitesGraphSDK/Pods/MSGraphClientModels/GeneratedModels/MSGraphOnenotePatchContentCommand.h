// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnenotePatchActionType.h"
#import "MSGraphOnenotePatchInsertPosition.h"


#import "MSObject.h"

@interface MSGraphOnenotePatchContentCommand : MSObject

@property (nonnull, nonatomic, setter=setAction:, getter=action) MSGraphOnenotePatchActionType* action;
@property (nonnull, nonatomic, setter=setTarget:, getter=target) NSString* target;
@property (nullable, nonatomic, setter=setContent:, getter=content) NSString* content;
@property (nullable, nonatomic, setter=setPosition:, getter=position) MSGraphOnenotePatchInsertPosition* position;

@end
