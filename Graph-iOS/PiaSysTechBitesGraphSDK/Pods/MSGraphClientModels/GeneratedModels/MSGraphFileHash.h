// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFileHashType.h"


#import "MSObject.h"

@interface MSGraphFileHash : MSObject

@property (nullable, nonatomic, setter=setHashType:, getter=hashType) MSGraphFileHashType* hashType;
@property (nullable, nonatomic, setter=setHashValue:, getter=hashValue) NSString* hashValue;

@end
