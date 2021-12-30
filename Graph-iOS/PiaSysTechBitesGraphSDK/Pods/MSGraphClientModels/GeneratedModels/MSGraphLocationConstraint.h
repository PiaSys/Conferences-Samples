// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphLocationConstraintItem; 


#import "MSObject.h"

@interface MSGraphLocationConstraint : MSObject

@property (nullable, nonatomic, setter=setLocations:, getter=locations) NSArray* locations;
@property (nonatomic, setter=setIsRequired:, getter=isRequired) BOOL isRequired;
@property (nonatomic, setter=setSuggestLocation:, getter=suggestLocation) BOOL suggestLocation;

@end
