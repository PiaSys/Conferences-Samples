// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppIdentity()
{
    NSString* _appId;
    NSString* _displayName;
    NSString* _servicePrincipalId;
    NSString* _servicePrincipalName;
}
@end

@implementation MSGraphAppIdentity

- (NSString*) appId
{
    if([[NSNull null] isEqual:self.dictionary[@"appId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appId"];
}

- (void) setAppId: (NSString*) val
{
    self.dictionary[@"appId"] = val;
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

- (NSString*) servicePrincipalId
{
    if([[NSNull null] isEqual:self.dictionary[@"servicePrincipalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"servicePrincipalId"];
}

- (void) setServicePrincipalId: (NSString*) val
{
    self.dictionary[@"servicePrincipalId"] = val;
}

- (NSString*) servicePrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"servicePrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"servicePrincipalName"];
}

- (void) setServicePrincipalName: (NSString*) val
{
    self.dictionary[@"servicePrincipalName"] = val;
}

@end
