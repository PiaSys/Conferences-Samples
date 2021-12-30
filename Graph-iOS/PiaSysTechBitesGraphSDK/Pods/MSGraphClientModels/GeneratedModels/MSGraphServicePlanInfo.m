// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServicePlanInfo()
{
    NSString* _servicePlanId;
    NSString* _servicePlanName;
    NSString* _provisioningStatus;
    NSString* _appliesTo;
}
@end

@implementation MSGraphServicePlanInfo

- (NSString*) servicePlanId
{
    if([[NSNull null] isEqual:self.dictionary[@"servicePlanId"]])
    {
        return nil;
    }   
    return self.dictionary[@"servicePlanId"];
}

- (void) setServicePlanId: (NSString*) val
{
    self.dictionary[@"servicePlanId"] = val;
}

- (NSString*) servicePlanName
{
    if([[NSNull null] isEqual:self.dictionary[@"servicePlanName"]])
    {
        return nil;
    }   
    return self.dictionary[@"servicePlanName"];
}

- (void) setServicePlanName: (NSString*) val
{
    self.dictionary[@"servicePlanName"] = val;
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

- (NSString*) appliesTo
{
    if([[NSNull null] isEqual:self.dictionary[@"appliesTo"]])
    {
        return nil;
    }   
    return self.dictionary[@"appliesTo"];
}

- (void) setAppliesTo: (NSString*) val
{
    self.dictionary[@"appliesTo"] = val;
}

@end
