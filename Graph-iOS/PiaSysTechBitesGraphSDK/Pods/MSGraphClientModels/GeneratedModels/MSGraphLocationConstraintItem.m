// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLocationConstraintItem()
{
    BOOL _resolveAvailability;
}
@end

@implementation MSGraphLocationConstraintItem

- (BOOL) resolveAvailability
{
    _resolveAvailability = [self.dictionary[@"resolveAvailability"] boolValue];
    return _resolveAvailability;
}

- (void) setResolveAvailability: (BOOL) val
{
    _resolveAvailability = val;
    self.dictionary[@"resolveAvailability"] = @(val);
}

@end
