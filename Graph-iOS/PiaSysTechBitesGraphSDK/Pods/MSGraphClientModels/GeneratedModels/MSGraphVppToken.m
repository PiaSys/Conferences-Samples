// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphVppToken()
{
    NSString* _organizationName;
    MSGraphVppTokenAccountType* _vppTokenAccountType;
    NSString* _appleId;
    NSDate* _expirationDateTime;
    NSDate* _lastSyncDateTime;
    NSString* _token;
    NSDate* _lastModifiedDateTime;
    MSGraphVppTokenState* _state;
    MSGraphVppTokenSyncStatus* _lastSyncStatus;
    BOOL _automaticallyUpdateApps;
    NSString* _countryOrRegion;
}
@end

@implementation MSGraphVppToken

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.vppToken";
    }
    return self;
}
- (NSString*) organizationName
{
    if([[NSNull null] isEqual:self.dictionary[@"organizationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"organizationName"];
}

- (void) setOrganizationName: (NSString*) val
{
    self.dictionary[@"organizationName"] = val;
}

- (MSGraphVppTokenAccountType*) vppTokenAccountType
{
    if(!_vppTokenAccountType){
        _vppTokenAccountType = [self.dictionary[@"vppTokenAccountType"] toMSGraphVppTokenAccountType];
    }
    return _vppTokenAccountType;
}

- (void) setVppTokenAccountType: (MSGraphVppTokenAccountType*) val
{
    _vppTokenAccountType = val;
    self.dictionary[@"vppTokenAccountType"] = val;
}

- (NSString*) appleId
{
    if([[NSNull null] isEqual:self.dictionary[@"appleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appleId"];
}

- (void) setAppleId: (NSString*) val
{
    self.dictionary[@"appleId"] = val;
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

- (NSDate*) lastSyncDateTime
{
    if(!_lastSyncDateTime){
        _lastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSyncDateTime"]];
    }
    return _lastSyncDateTime;
}

- (void) setLastSyncDateTime: (NSDate*) val
{
    _lastSyncDateTime = val;
    self.dictionary[@"lastSyncDateTime"] = [val ms_toString];
}

- (NSString*) token
{
    if([[NSNull null] isEqual:self.dictionary[@"token"]])
    {
        return nil;
    }   
    return self.dictionary[@"token"];
}

- (void) setToken: (NSString*) val
{
    self.dictionary[@"token"] = val;
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

- (MSGraphVppTokenState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphVppTokenState];
    }
    return _state;
}

- (void) setState: (MSGraphVppTokenState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (MSGraphVppTokenSyncStatus*) lastSyncStatus
{
    if(!_lastSyncStatus){
        _lastSyncStatus = [self.dictionary[@"lastSyncStatus"] toMSGraphVppTokenSyncStatus];
    }
    return _lastSyncStatus;
}

- (void) setLastSyncStatus: (MSGraphVppTokenSyncStatus*) val
{
    _lastSyncStatus = val;
    self.dictionary[@"lastSyncStatus"] = val;
}

- (BOOL) automaticallyUpdateApps
{
    _automaticallyUpdateApps = [self.dictionary[@"automaticallyUpdateApps"] boolValue];
    return _automaticallyUpdateApps;
}

- (void) setAutomaticallyUpdateApps: (BOOL) val
{
    _automaticallyUpdateApps = val;
    self.dictionary[@"automaticallyUpdateApps"] = @(val);
}

- (NSString*) countryOrRegion
{
    if([[NSNull null] isEqual:self.dictionary[@"countryOrRegion"]])
    {
        return nil;
    }   
    return self.dictionary[@"countryOrRegion"];
}

- (void) setCountryOrRegion: (NSString*) val
{
    self.dictionary[@"countryOrRegion"] = val;
}


@end
