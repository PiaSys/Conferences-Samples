// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainState()
{
    NSString* _status;
    NSString* _operation;
    NSDate* _lastActionDateTime;
}
@end

@implementation MSGraphDomainState

- (NSString*) status
{
    if([[NSNull null] isEqual:self.dictionary[@"status"]])
    {
        return nil;
    }   
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}

- (NSString*) operation
{
    if([[NSNull null] isEqual:self.dictionary[@"operation"]])
    {
        return nil;
    }   
    return self.dictionary[@"operation"];
}

- (void) setOperation: (NSString*) val
{
    self.dictionary[@"operation"] = val;
}

- (NSDate*) lastActionDateTime
{
    if(!_lastActionDateTime){
        _lastActionDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastActionDateTime"]];
    }
    return _lastActionDateTime;
}

- (void) setLastActionDateTime: (NSDate*) val
{
    _lastActionDateTime = val;
    self.dictionary[@"lastActionDateTime"] = [val ms_toString];
}

@end
