// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUsageDetails()
{
    NSDate* _lastAccessedDateTime;
    NSDate* _lastModifiedDateTime;
}
@end

@implementation MSGraphUsageDetails

- (NSDate*) lastAccessedDateTime
{
    if(!_lastAccessedDateTime){
        _lastAccessedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastAccessedDateTime"]];
    }
    return _lastAccessedDateTime;
}

- (void) setLastAccessedDateTime: (NSDate*) val
{
    _lastAccessedDateTime = val;
    self.dictionary[@"lastAccessedDateTime"] = [val ms_toString];
}

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

@end
