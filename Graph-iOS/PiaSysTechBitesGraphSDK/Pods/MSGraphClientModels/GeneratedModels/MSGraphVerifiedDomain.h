// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphVerifiedDomain : MSObject

@property (nullable, nonatomic, setter=setCapabilities:, getter=capabilities) NSString* capabilities;
@property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
@property (nonatomic, setter=setIsInitial:, getter=isInitial) BOOL isInitial;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;

@end
