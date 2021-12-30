// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeSlot()
{
    MSGraphDateTimeTimeZone* _start;
    MSGraphDateTimeTimeZone* _end;
}
@end

@implementation MSGraphTimeSlot

- (MSGraphDateTimeTimeZone*) start
{
    if(!_start){
        _start = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"start"]];
    }
    return _start;
}

- (void) setStart: (MSGraphDateTimeTimeZone*) val
{
    _start = val;
    self.dictionary[@"start"] = val;
}

- (MSGraphDateTimeTimeZone*) end
{
    if(!_end){
        _end = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"end"]];
    }
    return _end;
}

- (void) setEnd: (MSGraphDateTimeTimeZone*) val
{
    _end = val;
    self.dictionary[@"end"] = val;
}

@end
