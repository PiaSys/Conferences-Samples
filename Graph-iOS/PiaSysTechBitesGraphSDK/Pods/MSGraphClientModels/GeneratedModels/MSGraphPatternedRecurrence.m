// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPatternedRecurrence()
{
    MSGraphRecurrencePattern* _pattern;
    MSGraphRecurrenceRange* _range;
}
@end

@implementation MSGraphPatternedRecurrence

- (MSGraphRecurrencePattern*) pattern
{
    if(!_pattern){
        _pattern = [[MSGraphRecurrencePattern alloc] initWithDictionary: self.dictionary[@"pattern"]];
    }
    return _pattern;
}

- (void) setPattern: (MSGraphRecurrencePattern*) val
{
    _pattern = val;
    self.dictionary[@"pattern"] = val;
}

- (MSGraphRecurrenceRange*) range
{
    if(!_range){
        _range = [[MSGraphRecurrenceRange alloc] initWithDictionary: self.dictionary[@"range"]];
    }
    return _range;
}

- (void) setRange: (MSGraphRecurrenceRange*) val
{
    _range = val;
    self.dictionary[@"range"] = val;
}

@end
