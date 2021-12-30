// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIosHomeScreenItem; 


#import "MSObject.h"

@interface MSGraphIosHomeScreenPage : MSObject

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonnull, nonatomic, setter=setIcons:, getter=icons) NSArray* icons;

@end
