// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceCompliancePolicySettingState()
{
    NSString* _setting;
    NSString* _settingName;
    NSString* _instanceDisplayName;
    MSGraphComplianceStatus* _state;
    int64_t _errorCode;
    NSString* _errorDescription;
    NSString* _userId;
    NSString* _userName;
    NSString* _userEmail;
    NSString* _userPrincipalName;
    NSArray* _sources;
    NSString* _currentValue;
}
@end

@implementation MSGraphDeviceCompliancePolicySettingState

- (NSString*) setting
{
    if([[NSNull null] isEqual:self.dictionary[@"setting"]])
    {
        return nil;
    }   
    return self.dictionary[@"setting"];
}

- (void) setSetting: (NSString*) val
{
    self.dictionary[@"setting"] = val;
}

- (NSString*) settingName
{
    if([[NSNull null] isEqual:self.dictionary[@"settingName"]])
    {
        return nil;
    }   
    return self.dictionary[@"settingName"];
}

- (void) setSettingName: (NSString*) val
{
    self.dictionary[@"settingName"] = val;
}

- (NSString*) instanceDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"instanceDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"instanceDisplayName"];
}

- (void) setInstanceDisplayName: (NSString*) val
{
    self.dictionary[@"instanceDisplayName"] = val;
}

- (MSGraphComplianceStatus*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphComplianceStatus];
    }
    return _state;
}

- (void) setState: (MSGraphComplianceStatus*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (int64_t) errorCode
{
    _errorCode = [self.dictionary[@"errorCode"] longLongValue];
    return _errorCode;
}

- (void) setErrorCode: (int64_t) val
{
    _errorCode = val;
    self.dictionary[@"errorCode"] = @(val);
}

- (NSString*) errorDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"errorDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"errorDescription"];
}

- (void) setErrorDescription: (NSString*) val
{
    self.dictionary[@"errorDescription"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) userName
{
    if([[NSNull null] isEqual:self.dictionary[@"userName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userName"];
}

- (void) setUserName: (NSString*) val
{
    self.dictionary[@"userName"] = val;
}

- (NSString*) userEmail
{
    if([[NSNull null] isEqual:self.dictionary[@"userEmail"]])
    {
        return nil;
    }   
    return self.dictionary[@"userEmail"];
}

- (void) setUserEmail: (NSString*) val
{
    self.dictionary[@"userEmail"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (NSArray*) sources
{
    if(!_sources){
        
    NSMutableArray *sourcesResult = [NSMutableArray array];
    NSArray *sources = self.dictionary[@"sources"];

    if ([sources isKindOfClass:[NSArray class]]){
        for (id tempSettingSource in sources){
            [sourcesResult addObject:tempSettingSource];
        }
    }

    _sources = sourcesResult;
        
    }
    return _sources;
}

- (void) setSources: (NSArray*) val
{
    _sources = val;
    self.dictionary[@"sources"] = val;
}

- (NSString*) currentValue
{
    if([[NSNull null] isEqual:self.dictionary[@"currentValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"currentValue"];
}

- (void) setCurrentValue: (NSString*) val
{
    self.dictionary[@"currentValue"] = val;
}

@end
