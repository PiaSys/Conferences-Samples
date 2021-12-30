// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMacOSGeneralDeviceConfiguration()
{
    NSArray* _compliantAppsList;
    MSGraphAppListType* _compliantAppListType;
    NSArray* _emailInDomainSuffixes;
    BOOL _passwordBlockSimple;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumCharacterSetCount;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeLock;
    int32_t _passwordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passwordPreviousPasswordBlockCount;
    MSGraphRequiredPasswordType* _passwordRequiredType;
    BOOL _passwordRequired;
}
@end

@implementation MSGraphMacOSGeneralDeviceConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.macOSGeneralDeviceConfiguration";
    }
    return self;
}
- (NSArray*) compliantAppsList
{
    if(!_compliantAppsList){
        
    NSMutableArray *compliantAppsListResult = [NSMutableArray array];
    NSArray *compliantAppsList = self.dictionary[@"compliantAppsList"];

    if ([compliantAppsList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in compliantAppsList){
            [compliantAppsListResult addObject:tempAppListItem];
        }
    }

    _compliantAppsList = compliantAppsListResult;
        
    }
    return _compliantAppsList;
}

- (void) setCompliantAppsList: (NSArray*) val
{
    _compliantAppsList = val;
    self.dictionary[@"compliantAppsList"] = val;
}

- (MSGraphAppListType*) compliantAppListType
{
    if(!_compliantAppListType){
        _compliantAppListType = [self.dictionary[@"compliantAppListType"] toMSGraphAppListType];
    }
    return _compliantAppListType;
}

- (void) setCompliantAppListType: (MSGraphAppListType*) val
{
    _compliantAppListType = val;
    self.dictionary[@"compliantAppListType"] = val;
}

- (NSArray*) emailInDomainSuffixes
{
    if([[NSNull null] isEqual:self.dictionary[@"emailInDomainSuffixes"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailInDomainSuffixes"];
}

- (void) setEmailInDomainSuffixes: (NSArray*) val
{
    self.dictionary[@"emailInDomainSuffixes"] = val;
}

- (BOOL) passwordBlockSimple
{
    _passwordBlockSimple = [self.dictionary[@"passwordBlockSimple"] boolValue];
    return _passwordBlockSimple;
}

- (void) setPasswordBlockSimple: (BOOL) val
{
    _passwordBlockSimple = val;
    self.dictionary[@"passwordBlockSimple"] = @(val);
}

- (int32_t) passwordExpirationDays
{
    _passwordExpirationDays = [self.dictionary[@"passwordExpirationDays"] intValue];
    return _passwordExpirationDays;
}

- (void) setPasswordExpirationDays: (int32_t) val
{
    _passwordExpirationDays = val;
    self.dictionary[@"passwordExpirationDays"] = @(val);
}

- (int32_t) passwordMinimumCharacterSetCount
{
    _passwordMinimumCharacterSetCount = [self.dictionary[@"passwordMinimumCharacterSetCount"] intValue];
    return _passwordMinimumCharacterSetCount;
}

- (void) setPasswordMinimumCharacterSetCount: (int32_t) val
{
    _passwordMinimumCharacterSetCount = val;
    self.dictionary[@"passwordMinimumCharacterSetCount"] = @(val);
}

- (int32_t) passwordMinimumLength
{
    _passwordMinimumLength = [self.dictionary[@"passwordMinimumLength"] intValue];
    return _passwordMinimumLength;
}

- (void) setPasswordMinimumLength: (int32_t) val
{
    _passwordMinimumLength = val;
    self.dictionary[@"passwordMinimumLength"] = @(val);
}

- (int32_t) passwordMinutesOfInactivityBeforeLock
{
    _passwordMinutesOfInactivityBeforeLock = [self.dictionary[@"passwordMinutesOfInactivityBeforeLock"] intValue];
    return _passwordMinutesOfInactivityBeforeLock;
}

- (void) setPasswordMinutesOfInactivityBeforeLock: (int32_t) val
{
    _passwordMinutesOfInactivityBeforeLock = val;
    self.dictionary[@"passwordMinutesOfInactivityBeforeLock"] = @(val);
}

- (int32_t) passwordMinutesOfInactivityBeforeScreenTimeout
{
    _passwordMinutesOfInactivityBeforeScreenTimeout = [self.dictionary[@"passwordMinutesOfInactivityBeforeScreenTimeout"] intValue];
    return _passwordMinutesOfInactivityBeforeScreenTimeout;
}

- (void) setPasswordMinutesOfInactivityBeforeScreenTimeout: (int32_t) val
{
    _passwordMinutesOfInactivityBeforeScreenTimeout = val;
    self.dictionary[@"passwordMinutesOfInactivityBeforeScreenTimeout"] = @(val);
}

- (int32_t) passwordPreviousPasswordBlockCount
{
    _passwordPreviousPasswordBlockCount = [self.dictionary[@"passwordPreviousPasswordBlockCount"] intValue];
    return _passwordPreviousPasswordBlockCount;
}

- (void) setPasswordPreviousPasswordBlockCount: (int32_t) val
{
    _passwordPreviousPasswordBlockCount = val;
    self.dictionary[@"passwordPreviousPasswordBlockCount"] = @(val);
}

- (MSGraphRequiredPasswordType*) passwordRequiredType
{
    if(!_passwordRequiredType){
        _passwordRequiredType = [self.dictionary[@"passwordRequiredType"] toMSGraphRequiredPasswordType];
    }
    return _passwordRequiredType;
}

- (void) setPasswordRequiredType: (MSGraphRequiredPasswordType*) val
{
    _passwordRequiredType = val;
    self.dictionary[@"passwordRequiredType"] = val;
}

- (BOOL) passwordRequired
{
    _passwordRequired = [self.dictionary[@"passwordRequired"] boolValue];
    return _passwordRequired;
}

- (void) setPasswordRequired: (BOOL) val
{
    _passwordRequired = val;
    self.dictionary[@"passwordRequired"] = @(val);
}


@end
