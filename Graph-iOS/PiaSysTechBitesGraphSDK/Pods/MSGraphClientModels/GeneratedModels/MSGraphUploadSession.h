// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphUploadSession : MSObject

@property (nullable, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
@property (nullable, nonatomic, setter=setNextExpectedRanges:, getter=nextExpectedRanges) NSArray* nextExpectedRanges;
@property (nullable, nonatomic, setter=setUploadUrl:, getter=uploadUrl) NSString* uploadUrl;

@end
