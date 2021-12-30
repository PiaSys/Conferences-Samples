// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDiagnostic()
{
    NSString* _message;
    NSString* _url;
}
@end

@implementation MSGraphDiagnostic

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

- (NSString*) url
{
    if([[NSNull null] isEqual:self.dictionary[@"url"]])
    {
        return nil;
    }   
    return self.dictionary[@"url"];
}

- (void) setUrl: (NSString*) val
{
    self.dictionary[@"url"] = val;
}

@end
