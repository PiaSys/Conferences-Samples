// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUploadSession()
{
    NSDate* _expirationDateTime;
    NSArray* _nextExpectedRanges;
    NSString* _uploadUrl;
}
@end

@implementation MSGraphUploadSession

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSArray*) nextExpectedRanges
{
    if([[NSNull null] isEqual:self.dictionary[@"nextExpectedRanges"]])
    {
        return nil;
    }   
    return self.dictionary[@"nextExpectedRanges"];
}

- (void) setNextExpectedRanges: (NSArray*) val
{
    self.dictionary[@"nextExpectedRanges"] = val;
}

- (NSString*) uploadUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"uploadUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"uploadUrl"];
}

- (void) setUploadUrl: (NSString*) val
{
    self.dictionary[@"uploadUrl"] = val;
}

@end
