// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemActionStat()
{
    int32_t _actionCount;
    int32_t _actorCount;
}
@end

@implementation MSGraphItemActionStat

- (int32_t) actionCount
{
    _actionCount = [self.dictionary[@"actionCount"] intValue];
    return _actionCount;
}

- (void) setActionCount: (int32_t) val
{
    _actionCount = val;
    self.dictionary[@"actionCount"] = @(val);
}

- (int32_t) actorCount
{
    _actorCount = [self.dictionary[@"actorCount"] intValue];
    return _actorCount;
}

- (void) setActorCount: (int32_t) val
{
    _actorCount = val;
    self.dictionary[@"actorCount"] = @(val);
}

@end
