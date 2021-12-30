// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFileSecurityState()
{
    MSGraphFileHash* _fileHash;
    NSString* _name;
    NSString* _path;
    NSString* _riskScore;
}
@end

@implementation MSGraphFileSecurityState

- (MSGraphFileHash*) fileHash
{
    if(!_fileHash){
        _fileHash = [[MSGraphFileHash alloc] initWithDictionary: self.dictionary[@"fileHash"]];
    }
    return _fileHash;
}

- (void) setFileHash: (MSGraphFileHash*) val
{
    _fileHash = val;
    self.dictionary[@"fileHash"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) path
{
    if([[NSNull null] isEqual:self.dictionary[@"path"]])
    {
        return nil;
    }   
    return self.dictionary[@"path"];
}

- (void) setPath: (NSString*) val
{
    self.dictionary[@"path"] = val;
}

- (NSString*) riskScore
{
    if([[NSNull null] isEqual:self.dictionary[@"riskScore"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskScore"];
}

- (void) setRiskScore: (NSString*) val
{
    self.dictionary[@"riskScore"] = val;
}

@end
