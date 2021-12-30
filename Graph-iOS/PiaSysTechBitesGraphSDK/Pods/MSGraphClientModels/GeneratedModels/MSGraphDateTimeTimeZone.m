// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDateTimeTimeZone()
{
    NSString* _dateTime;
    NSString* _timeZone;
}
@end

@implementation MSGraphDateTimeTimeZone

- (NSString*) dateTime
{
    return self.dictionary[@"dateTime"];
}

- (void) setDateTime: (NSString*) val
{
    self.dictionary[@"dateTime"] = val;
}

- (NSString*) timeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"timeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeZone"];
}

- (void) setTimeZone: (NSString*) val
{
    self.dictionary[@"timeZone"] = val;
}

@end
