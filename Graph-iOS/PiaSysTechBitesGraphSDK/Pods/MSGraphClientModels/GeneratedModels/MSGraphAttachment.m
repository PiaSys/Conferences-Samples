// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttachment()
{
    NSDate* _lastModifiedDateTime;
    NSString* _name;
    NSString* _contentType;
    int32_t _size;
    BOOL _isInline;
}
@end

@implementation MSGraphAttachment

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
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

- (NSString*) contentType
{
    if([[NSNull null] isEqual:self.dictionary[@"contentType"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentType"];
}

- (void) setContentType: (NSString*) val
{
    self.dictionary[@"contentType"] = val;
}

- (int32_t) size
{
    _size = [self.dictionary[@"size"] intValue];
    return _size;
}

- (void) setSize: (int32_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

- (BOOL) isInline
{
    _isInline = [self.dictionary[@"isInline"] boolValue];
    return _isInline;
}

- (void) setIsInline: (BOOL) val
{
    _isInline = val;
    self.dictionary[@"isInline"] = @(val);
}


@end
