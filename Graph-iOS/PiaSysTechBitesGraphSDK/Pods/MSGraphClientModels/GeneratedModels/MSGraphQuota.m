// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphQuota()
{
    int64_t _deleted;
    int64_t _remaining;
    NSString* _state;
    int64_t _total;
    int64_t _used;
}
@end

@implementation MSGraphQuota

- (int64_t) deleted
{
    _deleted = [self.dictionary[@"deleted"] longLongValue];
    return _deleted;
}

- (void) setDeleted: (int64_t) val
{
    _deleted = val;
    self.dictionary[@"deleted"] = @(val);
}

- (int64_t) remaining
{
    _remaining = [self.dictionary[@"remaining"] longLongValue];
    return _remaining;
}

- (void) setRemaining: (int64_t) val
{
    _remaining = val;
    self.dictionary[@"remaining"] = @(val);
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

- (int64_t) total
{
    _total = [self.dictionary[@"total"] longLongValue];
    return _total;
}

- (void) setTotal: (int64_t) val
{
    _total = val;
    self.dictionary[@"total"] = @(val);
}

- (int64_t) used
{
    _used = [self.dictionary[@"used"] longLongValue];
    return _used;
}

- (void) setUsed: (int64_t) val
{
    _used = val;
    self.dictionary[@"used"] = @(val);
}

@end
