// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagementTroubleshootingEvent()
{
    NSDate* _eventDateTime;
    NSString* _correlationId;
}
@end

@implementation MSGraphDeviceManagementTroubleshootingEvent

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceManagementTroubleshootingEvent";
    }
    return self;
}
- (NSDate*) eventDateTime
{
    if(!_eventDateTime){
        _eventDateTime = [NSDate ms_dateFromString: self.dictionary[@"eventDateTime"]];
    }
    return _eventDateTime;
}

- (void) setEventDateTime: (NSDate*) val
{
    _eventDateTime = val;
    self.dictionary[@"eventDateTime"] = [val ms_toString];
}

- (NSString*) correlationId
{
    if([[NSNull null] isEqual:self.dictionary[@"correlationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"correlationId"];
}

- (void) setCorrelationId: (NSString*) val
{
    self.dictionary[@"correlationId"] = val;
}


@end
