// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFileHash()
{
    MSGraphFileHashType* _hashType;
    NSString* _hashValue;
}
@end

@implementation MSGraphFileHash

- (MSGraphFileHashType*) hashType
{
    if(!_hashType){
        _hashType = [self.dictionary[@"hashType"] toMSGraphFileHashType];
    }
    return _hashType;
}

- (void) setHashType: (MSGraphFileHashType*) val
{
    _hashType = val;
    self.dictionary[@"hashType"] = val;
}

- (NSString*) hashValue
{
    if([[NSNull null] isEqual:self.dictionary[@"hashValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"hashValue"];
}

- (void) setHashValue: (NSString*) val
{
    self.dictionary[@"hashValue"] = val;
}

@end
