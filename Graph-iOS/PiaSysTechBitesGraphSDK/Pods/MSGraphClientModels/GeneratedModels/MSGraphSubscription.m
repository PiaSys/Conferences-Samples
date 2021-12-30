// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSubscription()
{
    NSString* _resource;
    NSString* _changeType;
    NSString* _clientState;
    NSString* _notificationUrl;
    NSDate* _expirationDateTime;
    NSString* _applicationId;
    NSString* _creatorId;
}
@end

@implementation MSGraphSubscription

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.subscription";
    }
    return self;
}
- (NSString*) resource
{
    return self.dictionary[@"resource"];
}

- (void) setResource: (NSString*) val
{
    self.dictionary[@"resource"] = val;
}

- (NSString*) changeType
{
    return self.dictionary[@"changeType"];
}

- (void) setChangeType: (NSString*) val
{
    self.dictionary[@"changeType"] = val;
}

- (NSString*) clientState
{
    if([[NSNull null] isEqual:self.dictionary[@"clientState"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientState"];
}

- (void) setClientState: (NSString*) val
{
    self.dictionary[@"clientState"] = val;
}

- (NSString*) notificationUrl
{
    return self.dictionary[@"notificationUrl"];
}

- (void) setNotificationUrl: (NSString*) val
{
    self.dictionary[@"notificationUrl"] = val;
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

- (NSString*) applicationId
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationId"];
}

- (void) setApplicationId: (NSString*) val
{
    self.dictionary[@"applicationId"] = val;
}

- (NSString*) creatorId
{
    if([[NSNull null] isEqual:self.dictionary[@"creatorId"]])
    {
        return nil;
    }   
    return self.dictionary[@"creatorId"];
}

- (void) setCreatorId: (NSString*) val
{
    self.dictionary[@"creatorId"] = val;
}


@end
