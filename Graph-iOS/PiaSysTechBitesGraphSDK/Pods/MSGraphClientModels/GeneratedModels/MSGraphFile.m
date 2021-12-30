// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFile()
{
    MSGraphHashes* _hashes;
    NSString* _mimeType;
    BOOL _processingMetadata;
}
@end

@implementation MSGraphFile

- (MSGraphHashes*) hashes
{
    if(!_hashes){
        _hashes = [[MSGraphHashes alloc] initWithDictionary: self.dictionary[@"hashes"]];
    }
    return _hashes;
}

- (void) setHashes: (MSGraphHashes*) val
{
    _hashes = val;
    self.dictionary[@"hashes"] = val;
}

- (NSString*) mimeType
{
    if([[NSNull null] isEqual:self.dictionary[@"mimeType"]])
    {
        return nil;
    }   
    return self.dictionary[@"mimeType"];
}

- (void) setMimeType: (NSString*) val
{
    self.dictionary[@"mimeType"] = val;
}

- (BOOL) processingMetadata
{
    _processingMetadata = [self.dictionary[@"processingMetadata"] boolValue];
    return _processingMetadata;
}

- (void) setProcessingMetadata: (BOOL) val
{
    _processingMetadata = val;
    self.dictionary[@"processingMetadata"] = @(val);
}

@end
