// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import "NSDate+MSSerialization.h"

@implementation NSDate (Serialization)

static NSString *dateFormatWithMillis = @"yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ";
static NSString *dateFormatWithoutMillis = @"yyyy-MM-dd'T'HH:mm:ssZZZZZ";

- (NSString *)ms_toString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormatWithMillis];
    NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [dateFormatter setLocale:posix];
    return [dateFormatter stringFromDate:self];
}

+ (instancetype)ms_dateFromString:(NSString *)dateString
{
    NSDate *date = nil;
    if (dateString)
    {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:dateFormatWithMillis];
        NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [dateFormatter setLocale:posix];
        date = [dateFormatter dateFromString:dateString];
        // If we couldn't parse the date, it may have no milliseconds on the string.
        if (!date)
        {
            [dateFormatter setDateFormat:dateFormatWithoutMillis];
            date = [dateFormatter dateFromString:dateString];
        }
    }
    return date;   
}

@end
