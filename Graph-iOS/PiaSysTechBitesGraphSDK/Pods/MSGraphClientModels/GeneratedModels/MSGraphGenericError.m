// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGenericError()
{
    NSString* _message;
    NSString* _code;
}
@end

@implementation MSGraphGenericError

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

- (NSString*) code
{
    if([[NSNull null] isEqual:self.dictionary[@"code"]])
    {
        return nil;
    }   
    return self.dictionary[@"code"];
}

- (void) setCode: (NSString*) val
{
    self.dictionary[@"code"] = val;
}

@end
