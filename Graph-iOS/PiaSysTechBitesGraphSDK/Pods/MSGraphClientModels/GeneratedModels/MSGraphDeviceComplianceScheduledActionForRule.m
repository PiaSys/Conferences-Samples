// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceComplianceScheduledActionForRule()
{
    NSString* _ruleName;
    NSArray* _scheduledActionConfigurations;
}
@end

@implementation MSGraphDeviceComplianceScheduledActionForRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceComplianceScheduledActionForRule";
    }
    return self;
}
- (NSString*) ruleName
{
    if([[NSNull null] isEqual:self.dictionary[@"ruleName"]])
    {
        return nil;
    }   
    return self.dictionary[@"ruleName"];
}

- (void) setRuleName: (NSString*) val
{
    self.dictionary[@"ruleName"] = val;
}

- (NSArray*) scheduledActionConfigurations
{
    if(!_scheduledActionConfigurations){
        
    NSMutableArray *scheduledActionConfigurationsResult = [NSMutableArray array];
    NSArray *scheduledActionConfigurations = self.dictionary[@"scheduledActionConfigurations"];

    if ([scheduledActionConfigurations isKindOfClass:[NSArray class]]){
        for (id tempDeviceComplianceActionItem in scheduledActionConfigurations){
            [scheduledActionConfigurationsResult addObject:tempDeviceComplianceActionItem];
        }
    }

    _scheduledActionConfigurations = scheduledActionConfigurationsResult;
        
    }
    return _scheduledActionConfigurations;
}

- (void) setScheduledActionConfigurations: (NSArray*) val
{
    _scheduledActionConfigurations = val;
    self.dictionary[@"scheduledActionConfigurations"] = val;
}


@end
