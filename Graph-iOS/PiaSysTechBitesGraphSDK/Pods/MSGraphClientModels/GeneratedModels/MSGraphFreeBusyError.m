// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFreeBusyError()
{
    NSString* _message;
    NSString* _responseCode;
}
@end

@implementation MSGraphFreeBusyError

- (NSString*) message
{
    if([[NSNull null] isEqual:self.dictionary[@"message"]])
    {
        return nil;
    }   
    return self.dictionary[@"message"];
}

- (void) setMessage: (NSString*) val
{
    self.dictionary[@"message"] = val;
}

- (NSString*) responseCode
{
    if([[NSNull null] isEqual:self.dictionary[@"responseCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"responseCode"];
}

- (void) setResponseCode: (NSString*) val
{
    self.dictionary[@"responseCode"] = val;
}

@end
