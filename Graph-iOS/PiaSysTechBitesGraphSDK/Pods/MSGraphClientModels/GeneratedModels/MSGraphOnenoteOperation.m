// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnenoteOperation()
{
    NSString* _resourceLocation;
    NSString* _resourceId;
    MSGraphOnenoteOperationError* _error;
    NSString* _percentComplete;
}
@end

@implementation MSGraphOnenoteOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.onenoteOperation";
    }
    return self;
}
- (NSString*) resourceLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceLocation"];
}

- (void) setResourceLocation: (NSString*) val
{
    self.dictionary[@"resourceLocation"] = val;
}

- (NSString*) resourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceId"];
}

- (void) setResourceId: (NSString*) val
{
    self.dictionary[@"resourceId"] = val;
}

- (MSGraphOnenoteOperationError*) error
{
    if(!_error){
        _error = [[MSGraphOnenoteOperationError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphOnenoteOperationError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}

- (NSString*) percentComplete
{
    if([[NSNull null] isEqual:self.dictionary[@"percentComplete"]])
    {
        return nil;
    }   
    return self.dictionary[@"percentComplete"];
}

- (void) setPercentComplete: (NSString*) val
{
    self.dictionary[@"percentComplete"] = val;
}


@end
