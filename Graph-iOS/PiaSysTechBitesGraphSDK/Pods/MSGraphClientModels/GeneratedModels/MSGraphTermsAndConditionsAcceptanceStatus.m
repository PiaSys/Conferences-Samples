// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermsAndConditionsAcceptanceStatus()
{
    NSString* _userDisplayName;
    int32_t _acceptedVersion;
    NSDate* _acceptedDateTime;
    MSGraphTermsAndConditions* _termsAndConditions;
}
@end

@implementation MSGraphTermsAndConditionsAcceptanceStatus

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termsAndConditionsAcceptanceStatus";
    }
    return self;
}
- (NSString*) userDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userDisplayName"];
}

- (void) setUserDisplayName: (NSString*) val
{
    self.dictionary[@"userDisplayName"] = val;
}

- (int32_t) acceptedVersion
{
    _acceptedVersion = [self.dictionary[@"acceptedVersion"] intValue];
    return _acceptedVersion;
}

- (void) setAcceptedVersion: (int32_t) val
{
    _acceptedVersion = val;
    self.dictionary[@"acceptedVersion"] = @(val);
}

- (NSDate*) acceptedDateTime
{
    if(!_acceptedDateTime){
        _acceptedDateTime = [NSDate ms_dateFromString: self.dictionary[@"acceptedDateTime"]];
    }
    return _acceptedDateTime;
}

- (void) setAcceptedDateTime: (NSDate*) val
{
    _acceptedDateTime = val;
    self.dictionary[@"acceptedDateTime"] = [val ms_toString];
}

- (MSGraphTermsAndConditions*) termsAndConditions
{
    if(!_termsAndConditions){
        _termsAndConditions = [[MSGraphTermsAndConditions alloc] initWithDictionary: self.dictionary[@"termsAndConditions"]];
    }
    return _termsAndConditions;
}

- (void) setTermsAndConditions: (MSGraphTermsAndConditions*) val
{
    _termsAndConditions = val;
    self.dictionary[@"termsAndConditions"] = val;
}


@end
