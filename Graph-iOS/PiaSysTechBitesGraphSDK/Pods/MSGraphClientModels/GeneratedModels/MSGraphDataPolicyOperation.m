// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDataPolicyOperation()
{
    NSDate* _completedDateTime;
    MSGraphDataPolicyOperationStatus* _status;
    NSString* _storageLocation;
    NSString* _userId;
    NSDate* _submittedDateTime;
    double _progress;
}
@end

@implementation MSGraphDataPolicyOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.dataPolicyOperation";
    }
    return self;
}
- (NSDate*) completedDateTime
{
    if(!_completedDateTime){
        _completedDateTime = [NSDate ms_dateFromString: self.dictionary[@"completedDateTime"]];
    }
    return _completedDateTime;
}

- (void) setCompletedDateTime: (NSDate*) val
{
    _completedDateTime = val;
    self.dictionary[@"completedDateTime"] = [val ms_toString];
}

- (MSGraphDataPolicyOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphDataPolicyOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphDataPolicyOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) storageLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"storageLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"storageLocation"];
}

- (void) setStorageLocation: (NSString*) val
{
    self.dictionary[@"storageLocation"] = val;
}

- (NSString*) userId
{
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSDate*) submittedDateTime
{
    if(!_submittedDateTime){
        _submittedDateTime = [NSDate ms_dateFromString: self.dictionary[@"submittedDateTime"]];
    }
    return _submittedDateTime;
}

- (void) setSubmittedDateTime: (NSDate*) val
{
    _submittedDateTime = val;
    self.dictionary[@"submittedDateTime"] = [val ms_toString];
}

- (double) progress
{
    _progress = [self.dictionary[@"progress"] floatValue];
    return _progress;
}

- (void) setProgress: (double) val
{
    _progress = val;
    self.dictionary[@"progress"] = @(val);
}


@end
