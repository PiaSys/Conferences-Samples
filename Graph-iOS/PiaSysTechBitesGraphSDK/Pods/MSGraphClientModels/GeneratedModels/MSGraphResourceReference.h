// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphResourceReference : MSObject

@property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
@property (nullable, nonatomic, setter=setResourceReferenceId:, getter=resourceReferenceId) NSString* resourceReferenceId;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;

@end
