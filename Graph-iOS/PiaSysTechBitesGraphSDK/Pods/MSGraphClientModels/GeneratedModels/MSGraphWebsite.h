// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWebsiteType.h"


#import "MSObject.h"

@interface MSGraphWebsite : MSObject

@property (nullable, nonatomic, setter=setType:, getter=type) MSGraphWebsiteType* type;
@property (nullable, nonatomic, setter=setAddress:, getter=address) NSString* address;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;

@end
