// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUpdateWindowsDeviceAccountActionParameter()
{
    MSGraphWindowsDeviceAccount* _deviceAccount;
    BOOL _passwordRotationEnabled;
    BOOL _calendarSyncEnabled;
    NSString* _deviceAccountEmail;
    NSString* _exchangeServer;
    NSString* _sessionInitiationProtocalAddress;
}
@end

@implementation MSGraphUpdateWindowsDeviceAccountActionParameter

- (MSGraphWindowsDeviceAccount*) deviceAccount
{
    if(!_deviceAccount){
        _deviceAccount = [[MSGraphWindowsDeviceAccount alloc] initWithDictionary: self.dictionary[@"deviceAccount"]];
    }
    return _deviceAccount;
}

- (void) setDeviceAccount: (MSGraphWindowsDeviceAccount*) val
{
    _deviceAccount = val;
    self.dictionary[@"deviceAccount"] = val;
}

- (BOOL) passwordRotationEnabled
{
    _passwordRotationEnabled = [self.dictionary[@"passwordRotationEnabled"] boolValue];
    return _passwordRotationEnabled;
}

- (void) setPasswordRotationEnabled: (BOOL) val
{
    _passwordRotationEnabled = val;
    self.dictionary[@"passwordRotationEnabled"] = @(val);
}

- (BOOL) calendarSyncEnabled
{
    _calendarSyncEnabled = [self.dictionary[@"calendarSyncEnabled"] boolValue];
    return _calendarSyncEnabled;
}

- (void) setCalendarSyncEnabled: (BOOL) val
{
    _calendarSyncEnabled = val;
    self.dictionary[@"calendarSyncEnabled"] = @(val);
}

- (NSString*) deviceAccountEmail
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceAccountEmail"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceAccountEmail"];
}

- (void) setDeviceAccountEmail: (NSString*) val
{
    self.dictionary[@"deviceAccountEmail"] = val;
}

- (NSString*) exchangeServer
{
    if([[NSNull null] isEqual:self.dictionary[@"exchangeServer"]])
    {
        return nil;
    }   
    return self.dictionary[@"exchangeServer"];
}

- (void) setExchangeServer: (NSString*) val
{
    self.dictionary[@"exchangeServer"] = val;
}

- (NSString*) sessionInitiationProtocalAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"sessionInitiationProtocalAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"sessionInitiationProtocalAddress"];
}

- (void) setSessionInitiationProtocalAddress: (NSString*) val
{
    self.dictionary[@"sessionInitiationProtocalAddress"] = val;
}

@end
