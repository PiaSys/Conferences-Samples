// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphFileEncryptionInfo : MSObject

@property (nullable, nonatomic, setter=setEncryptionKey:, getter=encryptionKey) NSString* encryptionKey;
@property (nullable, nonatomic, setter=setInitializationVector:, getter=initializationVector) NSString* initializationVector;
@property (nullable, nonatomic, setter=setMac:, getter=mac) NSString* mac;
@property (nullable, nonatomic, setter=setMacKey:, getter=macKey) NSString* macKey;
@property (nullable, nonatomic, setter=setProfileIdentifier:, getter=profileIdentifier) NSString* profileIdentifier;
@property (nullable, nonatomic, setter=setFileDigest:, getter=fileDigest) NSString* fileDigest;
@property (nullable, nonatomic, setter=setFileDigestAlgorithm:, getter=fileDigestAlgorithm) NSString* fileDigestAlgorithm;

@end
