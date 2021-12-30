// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAssignedPlan()
{
    NSDate* _assignedDateTime;
    NSString* _capabilityStatus;
    NSString* _service;
    NSString* _servicePlanId;
}
@end

@implementation MSGraphAssignedPlan

- (NSDate*) assignedDateTime
{
    if(!_assignedDateTime){
        _assignedDateTime = [NSDate ms_dateFromString: self.dictionary[@"assignedDateTime"]];
    }
    return _assignedDateTime;
}

- (void) setAssignedDateTime: (NSDate*) val
{
    _assignedDateTime = val;
    self.dictionary[@"assignedDateTime"] = [val ms_toString];
}

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

@end
