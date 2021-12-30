// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphHashes()
{
    NSString* _crc32Hash;
    NSString* _quickXorHash;
    NSString* _sha1Hash;
}
@end

@implementation MSGraphHashes

- (NSString*) crc32Hash
{
    if([[NSNull null] isEqual:self.dictionary[@"crc32Hash"]])
    {
        return nil;
    }   
    return self.dictionary[@"crc32Hash"];
}

- (void) setCrc32Hash: (NSString*) val
{
    self.dictionary[@"crc32Hash"] = val;
}

- (NSString*) quickXorHash
{
    if([[NSNull null] isEqual:self.dictionary[@"quickXorHash"]])
    {
        return nil;
    }   
    return self.dictionary[@"quickXorHash"];
}

- (void) setQuickXorHash: (NSString*) val
{
    self.dictionary[@"quickXorHash"] = val;
}

- (NSString*) sha1Hash
{
    if([[NSNull null] isEqual:self.dictionary[@"sha1Hash"]])
    {
        return nil;
    }   
    return self.dictionary[@"sha1Hash"];
}

- (void) setSha1Hash: (NSString*) val
{
    self.dictionary[@"sha1Hash"] = val;
}

@end
