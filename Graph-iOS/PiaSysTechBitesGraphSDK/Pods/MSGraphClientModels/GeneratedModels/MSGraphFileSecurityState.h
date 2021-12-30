// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphFileHash; 


#import "MSObject.h"

@interface MSGraphFileSecurityState : MSObject

@property (nullable, nonatomic, setter=setFileHash:, getter=fileHash) MSGraphFileHash* fileHash;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setPath:, getter=path) NSString* path;
@property (nullable, nonatomic, setter=setRiskScore:, getter=riskScore) NSString* riskScore;

@end
