// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphUsageDetails : MSObject

@property (nullable, nonatomic, setter=setLastAccessedDateTime:, getter=lastAccessedDateTime) NSDate* lastAccessedDateTime;
@property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;

@end
