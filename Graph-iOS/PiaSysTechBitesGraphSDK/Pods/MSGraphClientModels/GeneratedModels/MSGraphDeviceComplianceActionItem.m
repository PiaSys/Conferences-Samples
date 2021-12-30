// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceComplianceActionItem()
{
    int32_t _gracePeriodHours;
    MSGraphDeviceComplianceActionType* _actionType;
    NSString* _notificationTemplateId;
    NSArray* _notificationMessageCCList;
}
@end

@implementation MSGraphDeviceComplianceActionItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceComplianceActionItem";
    }
    return self;
}
- (int32_t) gracePeriodHours
{
    _gracePeriodHours = [self.dictionary[@"gracePeriodHours"] intValue];
    return _gracePeriodHours;
}

- (void) setGracePeriodHours: (int32_t) val
{
    _gracePeriodHours = val;
    self.dictionary[@"gracePeriodHours"] = @(val);
}

- (MSGraphDeviceComplianceActionType*) actionType
{
    if(!_actionType){
        _actionType = [self.dictionary[@"actionType"] toMSGraphDeviceComplianceActionType];
    }
    return _actionType;
}

- (void) setActionType: (MSGraphDeviceComplianceActionType*) val
{
    _actionType = val;
    self.dictionary[@"actionType"] = val;
}

- (NSString*) notificationTemplateId
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationTemplateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationTemplateId"];
}

- (void) setNotificationTemplateId: (NSString*) val
{
    self.dictionary[@"notificationTemplateId"] = val;
}

- (NSArray*) notificationMessageCCList
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationMessageCCList"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationMessageCCList"];
}

- (void) setNotificationMessageCCList: (NSArray*) val
{
    self.dictionary[@"notificationMessageCCList"] = val;
}


@end
