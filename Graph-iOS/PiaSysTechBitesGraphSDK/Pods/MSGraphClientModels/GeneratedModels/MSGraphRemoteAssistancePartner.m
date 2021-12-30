// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRemoteAssistancePartner()
{
    NSString* _displayName;
    NSString* _onboardingUrl;
    MSGraphRemoteAssistanceOnboardingStatus* _onboardingStatus;
    NSDate* _lastConnectionDateTime;
}
@end

@implementation MSGraphRemoteAssistancePartner

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.remoteAssistancePartner";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) onboardingUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"onboardingUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"onboardingUrl"];
}

- (void) setOnboardingUrl: (NSString*) val
{
    self.dictionary[@"onboardingUrl"] = val;
}

- (MSGraphRemoteAssistanceOnboardingStatus*) onboardingStatus
{
    if(!_onboardingStatus){
        _onboardingStatus = [self.dictionary[@"onboardingStatus"] toMSGraphRemoteAssistanceOnboardingStatus];
    }
    return _onboardingStatus;
}

- (void) setOnboardingStatus: (MSGraphRemoteAssistanceOnboardingStatus*) val
{
    _onboardingStatus = val;
    self.dictionary[@"onboardingStatus"] = val;
}

- (NSDate*) lastConnectionDateTime
{
    if(!_lastConnectionDateTime){
        _lastConnectionDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastConnectionDateTime"]];
    }
    return _lastConnectionDateTime;
}

- (void) setLastConnectionDateTime: (NSDate*) val
{
    _lastConnectionDateTime = val;
    self.dictionary[@"lastConnectionDateTime"] = [val ms_toString];
}


@end
