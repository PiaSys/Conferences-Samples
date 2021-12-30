// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisionedPlan()
{
    NSString* _capabilityStatus;
    NSString* _provisioningStatus;
    NSString* _service;
}
@end

@implementation MSGraphProvisionedPlan

- (NSString*) capabilityStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"capabilityStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"capabilityStatus"];
}

- (void) setCapabilityStatus: (NSString*) val
{
    self.dictionary[@"capabilityStatus"] = val;
}

- (NSString*) provisioningStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"provisioningStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"provisioningStatus"];
}

- (void) setProvisioningStatus: (NSString*) val
{
    self.dictionary[@"provisioningStatus"] = val;
}

- (NSString*) service
{
    if([[NSNull null] isEqual:self.dictionary[@"service"]])
    {
        return nil;
    }   
    return self.dictionary[@"service"];
}

- (void) setService: (NSString*) val
{
    self.dictionary[@"service"] = val;
}

@end
