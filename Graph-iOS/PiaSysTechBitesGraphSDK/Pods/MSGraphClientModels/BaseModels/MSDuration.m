// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import "MSDuration.h"

#include <math.h>

@implementation MSDuration

- (instancetype)initWithDuration:(NSString *)duration
{
    self = [super init];
    if(self)
    {
        _durationString = duration;
        _durationInterval = [[self class] getTimeIntervalForDuration:duration];
    }
    return self;
}

- (instancetype)initWithTimeInterval:(NSTimeInterval)interval
{
    self = [super init];
    if(self)
    {
        _durationString = [[self class] getDurationForTimeInterval:interval];
        _durationInterval = interval;
    }
    return self;
}

+ (instancetype)ms_durationFromString:(NSString *)durationString
{
    
    return [[MSDuration alloc] initWithDuration:durationString];
}



+ (NSTimeInterval)getTimeIntervalForDuration:(NSString *)duration {
    const char *stringToParse = [duration UTF8String];
    int days = 0, hours = 0, minutes = 0, seconds = 0;

    const char *ptr = stringToParse;
    while(*ptr)
    {
        if(*ptr == 'P' || *ptr == 'T')
        {
            ptr++;
            continue;
        }

        int value, charsRead;
        char type;
        if(sscanf(ptr, "%d%c%n", &value, &type, &charsRead) != 2)
            return 0;
        if(type == 'D')
            days = value;
        else if(type == 'H')
            hours = value;
        else if(type == 'M')
            minutes = value;
        else if(type == 'S')
            seconds = value;
        else
            return 0;

        ptr += charsRead;
    }

    NSTimeInterval interval = ((days * 24 + hours) * 60 + minutes) * 60 + seconds;
    return interval;
}

+ (NSString *)getDurationForTimeInterval:(NSTimeInterval)interval {
    NSString *duration = @"PT";
    int days = 0, hours = 0, minutes = 0, seconds = 0;

    seconds = fmod(interval, 60);
    interval = interval - seconds;

    minutes = interval/ 60;
    minutes = fmod(minutes, 60);
    interval = interval - minutes*60;

    hours = interval/ (60*60);
    hours = fmod(hours , 24);
    interval = interval - hours*60*60;

    days = interval/ (24*60*60);

    if(days!=0)
    {
        duration = [duration stringByAppendingString:[NSString stringWithFormat:@"%dD",days]];
    }
    if(hours!=0)
    {
        duration = [duration stringByAppendingString:[NSString stringWithFormat:@"%dH",hours]];
    }
    if(minutes!=0)
    {
        duration = [duration stringByAppendingString:[NSString stringWithFormat:@"%dM",minutes]];
    }
    if(seconds!=0)
    {
        duration = [duration stringByAppendingString:[NSString stringWithFormat:@"%dS",seconds]];
    }
    return duration;
}



@end
