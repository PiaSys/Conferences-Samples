// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConvertIdResult()
{
    NSString* _sourceId;
    NSString* _targetId;
    MSGraphGenericError* _errorDetails;
}
@end

@implementation MSGraphConvertIdResult

- (NSString*) sourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"sourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourceId"];
}

- (void) setSourceId: (NSString*) val
{
    self.dictionary[@"sourceId"] = val;
}

- (NSString*) targetId
{
    if([[NSNull null] isEqual:self.dictionary[@"targetId"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetId"];
}

- (void) setTargetId: (NSString*) val
{
    self.dictionary[@"targetId"] = val;
}

- (MSGraphGenericError*) errorDetails
{
    if(!_errorDetails){
        _errorDetails = [[MSGraphGenericError alloc] initWithDictionary: self.dictionary[@"errorDetails"]];
    }
    return _errorDetails;
}

- (void) setErrorDetails: (MSGraphGenericError*) val
{
    _errorDetails = val;
    self.dictionary[@"errorDetails"] = val;
}

@end
