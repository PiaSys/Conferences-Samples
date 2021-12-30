// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTokenMeetingInfo()
{
    NSString* _token;
}
@end

@implementation MSGraphTokenMeetingInfo

- (NSString*) token
{
    return self.dictionary[@"token"];
}

- (void) setToken: (NSString*) val
{
    self.dictionary[@"token"] = val;
}

@end
