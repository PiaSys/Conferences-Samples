// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPublicationFacet : MSObject

@property (nullable, nonatomic, setter=setLevel:, getter=level) NSString* level;
@property (nullable, nonatomic, setter=setVersionId:, getter=versionId) NSString* versionId;

@end
