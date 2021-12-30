// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphMediaInfo : MSObject

@property (nonnull, nonatomic, setter=setUri:, getter=uri) NSString* uri;
@property (nullable, nonatomic, setter=setResourceId:, getter=resourceId) NSString* resourceId;

@end
