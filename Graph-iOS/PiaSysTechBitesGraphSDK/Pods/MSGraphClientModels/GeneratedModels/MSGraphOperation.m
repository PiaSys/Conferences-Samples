// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOperation()
{
    MSGraphOperationStatus* _status;
    NSDate* _createdDateTime;
    NSDate* _lastActionDateTime;
}
@end

@implementation MSGraphOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.operation";
    }
    return self;
}
- (MSGraphOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
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
