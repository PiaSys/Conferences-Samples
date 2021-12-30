// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserActivity()
{
    MSGraphVisualInfo* _visualElements;
    NSString* _activitySourceHost;
    NSString* _activationUrl;
    NSString* _appActivityId;
    NSString* _appDisplayName;
    NSString* _contentUrl;
    NSDate* _createdDateTime;
    NSDate* _expirationDateTime;
    NSString* _fallbackUrl;
    NSDate* _lastModifiedDateTime;
    NSString* _userTimezone;
    NSDictionary* _contentInfo;
    MSGraphStatus* _status;
    NSArray* _historyItems;
}
@end

@implementation MSGraphUserActivity

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userActivity";
    }
    return self;
}
- (MSGraphVisualInfo*) visualElements
{
    if(!_visualElements){
        _visualElements = [[MSGraphVisualInfo alloc] initWithDictionary: self.dictionary[@"visualElements"]];
    }
    return _visualElements;
}

- (void) setVisualElements: (MSGraphVisualInfo*) val
{
    _visualElements = val;
    self.dictionary[@"visualElements"] = val;
}

- (NSString*) activitySourceHost
{
    return self.dictionary[@"activitySourceHost"];
}

- (void) setActivitySourceHost: (NSString*) val
{
    self.dictionary[@"activitySourceHost"] = val;
}

- (NSString*) activationUrl
{
    return self.dictionary[@"activationUrl"];
}

- (void) setActivationUrl: (NSString*) val
{
    self.dictionary[@"activationUrl"] = val;
}

- (NSString*) appActivityId
{
    return self.dictionary[@"appActivityId"];
}

- (void) setAppActivityId: (NSString*) val
{
    self.dictionary[@"appActivityId"] = val;
}

- (NSString*) appDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"appDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"appDisplayName"];
}

- (void) setAppDisplayName: (NSString*) val
{
    self.dictionary[@"appDisplayName"] = val;
}

- (NSString*) contentUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"contentUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentUrl"];
}

- (void) setContentUrl: (NSString*) val
{
    self.dictionary[@"contentUrl"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSString*) fallbackUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"fallbackUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"fallbackUrl"];
}

- (void) setFallbackUrl: (NSString*) val
{
    self.dictionary[@"fallbackUrl"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSString*) userTimezone
{
    if([[NSNull null] isEqual:self.dictionary[@"userTimezone"]])
    {
        return nil;
    }   
    return self.dictionary[@"userTimezone"];
}

- (void) setUserTimezone: (NSString*) val
{
    self.dictionary[@"userTimezone"] = val;
}

- (NSDictionary*) contentInfo
{
    if(!_contentInfo){
        _contentInfo = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"contentInfo"]];
    }
    return _contentInfo;
}

- (void) setContentInfo: (NSDictionary*) val
{
    _contentInfo = val;
    self.dictionary[@"contentInfo"] = val;
}

- (MSGraphStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) historyItems
{
    if(!_historyItems){
        
    NSMutableArray *historyItemsResult = [NSMutableArray array];
    NSArray *historyItems = self.dictionary[@"historyItems"];

    if ([historyItems isKindOfClass:[NSArray class]]){
        for (id tempActivityHistoryItem in historyItems){
            [historyItemsResult addObject:tempActivityHistoryItem];
        }
    }

    _historyItems = historyItemsResult;
        
    }
    return _historyItems;
}

- (void) setHistoryItems: (NSArray*) val
{
    _historyItems = val;
    self.dictionary[@"historyItems"] = val;
}


@end
