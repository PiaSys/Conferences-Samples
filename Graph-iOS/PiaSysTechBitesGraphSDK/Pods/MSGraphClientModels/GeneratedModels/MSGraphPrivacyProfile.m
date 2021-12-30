// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrivacyProfile()
{
    NSString* _contactEmail;
    NSString* _statementUrl;
}
@end

@implementation MSGraphPrivacyProfile

- (NSString*) contactEmail
{
    if([[NSNull null] isEqual:self.dictionary[@"contactEmail"]])
    {
        return nil;
    }   
    return self.dictionary[@"contactEmail"];
}

- (void) setContactEmail: (NSString*) val
{
    self.dictionary[@"contactEmail"] = val;
}

- (NSString*) statementUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"statementUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"statementUrl"];
}

- (void) setStatementUrl: (NSString*) val
{
    self.dictionary[@"statementUrl"] = val;
}

@end
