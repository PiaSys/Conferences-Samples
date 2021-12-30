// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAutomaticRepliesSetting()
{
    MSGraphAutomaticRepliesStatus* _status;
    MSGraphExternalAudienceScope* _externalAudience;
    MSGraphDateTimeTimeZone* _scheduledStartDateTime;
    MSGraphDateTimeTimeZone* _scheduledEndDateTime;
    NSString* _internalReplyMessage;
    NSString* _externalReplyMessage;
}
@end

@implementation MSGraphAutomaticRepliesSetting

- (MSGraphAutomaticRepliesStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphAutomaticRepliesStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphAutomaticRepliesStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphExternalAudienceScope*) externalAudience
{
    if(!_externalAudience){
        _externalAudience = [self.dictionary[@"externalAudience"] toMSGraphExternalAudienceScope];
    }
    return _externalAudience;
}

- (void) setExternalAudience: (MSGraphExternalAudienceScope*) val
{
    _externalAudience = val;
    self.dictionary[@"externalAudience"] = val;
}

- (MSGraphDateTimeTimeZone*) scheduledStartDateTime
{
    if(!_scheduledStartDateTime){
        _scheduledStartDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"scheduledStartDateTime"]];
    }
    return _scheduledStartDateTime;
}

- (void) setScheduledStartDateTime: (MSGraphDateTimeTimeZone*) val
{
    _scheduledStartDateTime = val;
    self.dictionary[@"scheduledStartDateTime"] = val;
}

- (MSGraphDateTimeTimeZone*) scheduledEndDateTime
{
    if(!_scheduledEndDateTime){
        _scheduledEndDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"scheduledEndDateTime"]];
    }
    return _scheduledEndDateTime;
}

- (void) setScheduledEndDateTime: (MSGraphDateTimeTimeZone*) val
{
    _scheduledEndDateTime = val;
    self.dictionary[@"scheduledEndDateTime"] = val;
}

- (NSString*) internalReplyMessage
{
    if([[NSNull null] isEqual:self.dictionary[@"internalReplyMessage"]])
    {
        return nil;
    }   
    return self.dictionary[@"internalReplyMessage"];
}

- (void) setInternalReplyMessage: (NSString*) val
{
    self.dictionary[@"internalReplyMessage"] = val;
}

- (NSString*) externalReplyMessage
{
    if([[NSNull null] isEqual:self.dictionary[@"externalReplyMessage"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalReplyMessage"];
}

- (void) setExternalReplyMessage: (NSString*) val
{
    self.dictionary[@"externalReplyMessage"] = val;
}

@end
