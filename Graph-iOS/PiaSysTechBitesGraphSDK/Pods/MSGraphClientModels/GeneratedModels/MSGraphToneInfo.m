// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphToneInfo()
{
    int64_t _sequenceId;
    MSGraphTone* _tone;
}
@end

@implementation MSGraphToneInfo

- (int64_t) sequenceId
{
    _sequenceId = [self.dictionary[@"sequenceId"] longLongValue];
    return _sequenceId;
}

- (void) setSequenceId: (int64_t) val
{
    _sequenceId = val;
    self.dictionary[@"sequenceId"] = @(val);
}

- (MSGraphTone*) tone
{
    if(!_tone){
        _tone = [self.dictionary[@"tone"] toMSGraphTone];
    }
    return _tone;
}

- (void) setTone: (MSGraphTone*) val
{
    _tone = val;
    self.dictionary[@"tone"] = val;
}

@end
