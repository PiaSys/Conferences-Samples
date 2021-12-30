// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAutomaticRepliesMailTips()
{
    NSString* _message;
    MSGraphLocaleInfo* _messageLanguage;
    MSGraphDateTimeTimeZone* _scheduledStartTime;
    MSGraphDateTimeTimeZone* _scheduledEndTime;
}
@end

@implementation MSGraphAutomaticRepliesMailTips

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

- (MSGraphLocaleInfo*) messageLanguage
{
    if(!_messageLanguage){
        _messageLanguage = [[MSGraphLocaleInfo alloc] initWithDictionary: self.dictionary[@"messageLanguage"]];
    }
    return _messageLanguage;
}

- (void) setMessageLanguage: (MSGraphLocaleInfo*) val
{
    _messageLanguage = val;
    self.dictionary[@"messageLanguage"] = val;
}

- (MSGraphDateTimeTimeZone*) scheduledStartTime
{
    if(!_scheduledStartTime){
        _scheduledStartTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"scheduledStartTime"]];
    }
    return _scheduledStartTime;
}

- (void) setScheduledStartTime: (MSGraphDateTimeTimeZone*) val
{
    _scheduledStartTime = val;
    self.dictionary[@"scheduledStartTime"] = val;
}

- (MSGraphDateTimeTimeZone*) scheduledEndTime
{
    if(!_scheduledEndTime){
        _scheduledEndTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"scheduledEndTime"]];
    }
    return _scheduledEndTime;
}

- (void) setScheduledEndTime: (MSGraphDateTimeTimeZone*) val
{
    _scheduledEndTime = val;
    self.dictionary[@"scheduledEndTime"] = val;
}

@end
