// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApplePushNotificationCertificate()
{
    NSString* _appleIdentifier;
    NSString* _topicIdentifier;
    NSDate* _lastModifiedDateTime;
    NSDate* _expirationDateTime;
    NSString* _certificate;
}
@end

@implementation MSGraphApplePushNotificationCertificate

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.applePushNotificationCertificate";
    }
    return self;
}
- (NSString*) appleIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"appleIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"appleIdentifier"];
}

- (void) setAppleIdentifier: (NSString*) val
{
    self.dictionary[@"appleIdentifier"] = val;
}

- (NSString*) topicIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"topicIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"topicIdentifier"];
}

- (void) setTopicIdentifier: (NSString*) val
{
    self.dictionary[@"topicIdentifier"] = val;
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

- (NSString*) certificate
{
    if([[NSNull null] isEqual:self.dictionary[@"certificate"]])
    {
        return nil;
    }   
    return self.dictionary[@"certificate"];
}

- (void) setCertificate: (NSString*) val
{
    self.dictionary[@"certificate"] = val;
}


@end
