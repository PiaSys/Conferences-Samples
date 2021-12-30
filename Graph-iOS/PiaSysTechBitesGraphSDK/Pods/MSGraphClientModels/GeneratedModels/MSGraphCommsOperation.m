// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCommsOperation()
{
    MSGraphOperationStatus* _status;
    NSString* _clientContext;
    MSGraphResultInfo* _resultInfo;
}
@end

@implementation MSGraphCommsOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.commsOperation";
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

- (NSString*) clientContext
{
    if([[NSNull null] isEqual:self.dictionary[@"clientContext"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientContext"];
}

- (void) setClientContext: (NSString*) val
{
    self.dictionary[@"clientContext"] = val;
}

- (MSGraphResultInfo*) resultInfo
{
    if(!_resultInfo){
        _resultInfo = [[MSGraphResultInfo alloc] initWithDictionary: self.dictionary[@"resultInfo"]];
    }
    return _resultInfo;
}

- (void) setResultInfo: (MSGraphResultInfo*) val
{
    _resultInfo = val;
    self.dictionary[@"resultInfo"] = val;
}


@end
