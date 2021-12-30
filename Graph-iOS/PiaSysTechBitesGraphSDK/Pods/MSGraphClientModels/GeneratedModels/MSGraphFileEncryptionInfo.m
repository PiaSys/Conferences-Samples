// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFileEncryptionInfo()
{
    NSString* _encryptionKey;
    NSString* _initializationVector;
    NSString* _mac;
    NSString* _macKey;
    NSString* _profileIdentifier;
    NSString* _fileDigest;
    NSString* _fileDigestAlgorithm;
}
@end

@implementation MSGraphFileEncryptionInfo

- (NSString*) encryptionKey
{
    if([[NSNull null] isEqual:self.dictionary[@"encryptionKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"encryptionKey"];
}

- (void) setEncryptionKey: (NSString*) val
{
    self.dictionary[@"encryptionKey"] = val;
}

- (NSString*) initializationVector
{
    if([[NSNull null] isEqual:self.dictionary[@"initializationVector"]])
    {
        return nil;
    }   
    return self.dictionary[@"initializationVector"];
}

- (void) setInitializationVector: (NSString*) val
{
    self.dictionary[@"initializationVector"] = val;
}

- (NSString*) mac
{
    if([[NSNull null] isEqual:self.dictionary[@"mac"]])
    {
        return nil;
    }   
    return self.dictionary[@"mac"];
}

- (void) setMac: (NSString*) val
{
    self.dictionary[@"mac"] = val;
}

- (NSString*) macKey
{
    if([[NSNull null] isEqual:self.dictionary[@"macKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"macKey"];
}

- (void) setMacKey: (NSString*) val
{
    self.dictionary[@"macKey"] = val;
}

- (NSString*) profileIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"profileIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"profileIdentifier"];
}

- (void) setProfileIdentifier: (NSString*) val
{
    self.dictionary[@"profileIdentifier"] = val;
}

- (NSString*) fileDigest
{
    if([[NSNull null] isEqual:self.dictionary[@"fileDigest"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileDigest"];
}

- (void) setFileDigest: (NSString*) val
{
    self.dictionary[@"fileDigest"] = val;
}

- (NSString*) fileDigestAlgorithm
{
    if([[NSNull null] isEqual:self.dictionary[@"fileDigestAlgorithm"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileDigestAlgorithm"];
}

- (void) setFileDigestAlgorithm: (NSString*) val
{
    self.dictionary[@"fileDigestAlgorithm"] = val;
}

@end
