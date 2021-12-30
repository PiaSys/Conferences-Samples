// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlert()
{
    NSString* _activityGroupName;
    NSString* _assignedTo;
    NSString* _azureSubscriptionId;
    NSString* _azureTenantId;
    NSString* _category;
    NSDate* _closedDateTime;
    NSArray* _cloudAppStates;
    NSArray* _comments;
    int32_t _confidence;
    NSDate* _createdDateTime;
    NSString* _alertDescription;
    NSArray* _detectionIds;
    NSDate* _eventDateTime;
    MSGraphAlertFeedback* _feedback;
    NSArray* _fileStates;
    NSArray* _historyStates;
    NSArray* _hostStates;
    NSDate* _lastModifiedDateTime;
    NSArray* _malwareStates;
    NSArray* _networkConnections;
    NSArray* _processes;
    NSArray* _recommendedActions;
    NSArray* _registryKeyStates;
    MSGraphAlertSeverity* _severity;
    NSArray* _sourceMaterials;
    MSGraphAlertStatus* _status;
    NSArray* _tags;
    NSString* _title;
    NSArray* _triggers;
    NSArray* _userStates;
    MSGraphSecurityVendorInformation* _vendorInformation;
    NSArray* _vulnerabilityStates;
}
@end

@implementation MSGraphAlert

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.alert";
    }
    return self;
}
- (NSString*) activityGroupName
{
    if([[NSNull null] isEqual:self.dictionary[@"activityGroupName"]])
    {
        return nil;
    }   
    return self.dictionary[@"activityGroupName"];
}

- (void) setActivityGroupName: (NSString*) val
{
    self.dictionary[@"activityGroupName"] = val;
}

- (NSString*) assignedTo
{
    if([[NSNull null] isEqual:self.dictionary[@"assignedTo"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignedTo"];
}

- (void) setAssignedTo: (NSString*) val
{
    self.dictionary[@"assignedTo"] = val;
}

- (NSString*) azureSubscriptionId
{
    if([[NSNull null] isEqual:self.dictionary[@"azureSubscriptionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureSubscriptionId"];
}

- (void) setAzureSubscriptionId: (NSString*) val
{
    self.dictionary[@"azureSubscriptionId"] = val;
}

- (NSString*) azureTenantId
{
    return self.dictionary[@"azureTenantId"];
}

- (void) setAzureTenantId: (NSString*) val
{
    self.dictionary[@"azureTenantId"] = val;
}

- (NSString*) category
{
    if([[NSNull null] isEqual:self.dictionary[@"category"]])
    {
        return nil;
    }   
    return self.dictionary[@"category"];
}

- (void) setCategory: (NSString*) val
{
    self.dictionary[@"category"] = val;
}

- (NSDate*) closedDateTime
{
    if(!_closedDateTime){
        _closedDateTime = [NSDate ms_dateFromString: self.dictionary[@"closedDateTime"]];
    }
    return _closedDateTime;
}

- (void) setClosedDateTime: (NSDate*) val
{
    _closedDateTime = val;
    self.dictionary[@"closedDateTime"] = [val ms_toString];
}

- (NSArray*) cloudAppStates
{
    if(!_cloudAppStates){
        
    NSMutableArray *cloudAppStatesResult = [NSMutableArray array];
    NSArray *cloudAppStates = self.dictionary[@"cloudAppStates"];

    if ([cloudAppStates isKindOfClass:[NSArray class]]){
        for (id tempCloudAppSecurityState in cloudAppStates){
            [cloudAppStatesResult addObject:tempCloudAppSecurityState];
        }
    }

    _cloudAppStates = cloudAppStatesResult;
        
    }
    return _cloudAppStates;
}

- (void) setCloudAppStates: (NSArray*) val
{
    _cloudAppStates = val;
    self.dictionary[@"cloudAppStates"] = val;
}

- (NSArray*) comments
{
    if([[NSNull null] isEqual:self.dictionary[@"comments"]])
    {
        return nil;
    }   
    return self.dictionary[@"comments"];
}

- (void) setComments: (NSArray*) val
{
    self.dictionary[@"comments"] = val;
}

- (int32_t) confidence
{
    _confidence = [self.dictionary[@"confidence"] intValue];
    return _confidence;
}

- (void) setConfidence: (int32_t) val
{
    _confidence = val;
    self.dictionary[@"confidence"] = @(val);
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) alertDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAlertDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) detectionIds
{
    if([[NSNull null] isEqual:self.dictionary[@"detectionIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"detectionIds"];
}

- (void) setDetectionIds: (NSArray*) val
{
    self.dictionary[@"detectionIds"] = val;
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

- (MSGraphAlertFeedback*) feedback
{
    if(!_feedback){
        _feedback = [self.dictionary[@"feedback"] toMSGraphAlertFeedback];
    }
    return _feedback;
}

- (void) setFeedback: (MSGraphAlertFeedback*) val
{
    _feedback = val;
    self.dictionary[@"feedback"] = val;
}

- (NSArray*) fileStates
{
    if(!_fileStates){
        
    NSMutableArray *fileStatesResult = [NSMutableArray array];
    NSArray *fileStates = self.dictionary[@"fileStates"];

    if ([fileStates isKindOfClass:[NSArray class]]){
        for (id tempFileSecurityState in fileStates){
            [fileStatesResult addObject:tempFileSecurityState];
        }
    }

    _fileStates = fileStatesResult;
        
    }
    return _fileStates;
}

- (void) setFileStates: (NSArray*) val
{
    _fileStates = val;
    self.dictionary[@"fileStates"] = val;
}

- (NSArray*) historyStates
{
    if(!_historyStates){
        
    NSMutableArray *historyStatesResult = [NSMutableArray array];
    NSArray *historyStates = self.dictionary[@"historyStates"];

    if ([historyStates isKindOfClass:[NSArray class]]){
        for (id tempAlertHistoryState in historyStates){
            [historyStatesResult addObject:tempAlertHistoryState];
        }
    }

    _historyStates = historyStatesResult;
        
    }
    return _historyStates;
}

- (void) setHistoryStates: (NSArray*) val
{
    _historyStates = val;
    self.dictionary[@"historyStates"] = val;
}

- (NSArray*) hostStates
{
    if(!_hostStates){
        
    NSMutableArray *hostStatesResult = [NSMutableArray array];
    NSArray *hostStates = self.dictionary[@"hostStates"];

    if ([hostStates isKindOfClass:[NSArray class]]){
        for (id tempHostSecurityState in hostStates){
            [hostStatesResult addObject:tempHostSecurityState];
        }
    }

    _hostStates = hostStatesResult;
        
    }
    return _hostStates;
}

- (void) setHostStates: (NSArray*) val
{
    _hostStates = val;
    self.dictionary[@"hostStates"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSArray*) malwareStates
{
    if(!_malwareStates){
        
    NSMutableArray *malwareStatesResult = [NSMutableArray array];
    NSArray *malwareStates = self.dictionary[@"malwareStates"];

    if ([malwareStates isKindOfClass:[NSArray class]]){
        for (id tempMalwareState in malwareStates){
            [malwareStatesResult addObject:tempMalwareState];
        }
    }

    _malwareStates = malwareStatesResult;
        
    }
    return _malwareStates;
}

- (void) setMalwareStates: (NSArray*) val
{
    _malwareStates = val;
    self.dictionary[@"malwareStates"] = val;
}

- (NSArray*) networkConnections
{
    if(!_networkConnections){
        
    NSMutableArray *networkConnectionsResult = [NSMutableArray array];
    NSArray *networkConnections = self.dictionary[@"networkConnections"];

    if ([networkConnections isKindOfClass:[NSArray class]]){
        for (id tempNetworkConnection in networkConnections){
            [networkConnectionsResult addObject:tempNetworkConnection];
        }
    }

    _networkConnections = networkConnectionsResult;
        
    }
    return _networkConnections;
}

- (void) setNetworkConnections: (NSArray*) val
{
    _networkConnections = val;
    self.dictionary[@"networkConnections"] = val;
}

- (NSArray*) processes
{
    if(!_processes){
        
    NSMutableArray *processesResult = [NSMutableArray array];
    NSArray *processes = self.dictionary[@"processes"];

    if ([processes isKindOfClass:[NSArray class]]){
        for (id tempProcess in processes){
            [processesResult addObject:tempProcess];
        }
    }

    _processes = processesResult;
        
    }
    return _processes;
}

- (void) setProcesses: (NSArray*) val
{
    _processes = val;
    self.dictionary[@"processes"] = val;
}

- (NSArray*) recommendedActions
{
    if([[NSNull null] isEqual:self.dictionary[@"recommendedActions"]])
    {
        return nil;
    }   
    return self.dictionary[@"recommendedActions"];
}

- (void) setRecommendedActions: (NSArray*) val
{
    self.dictionary[@"recommendedActions"] = val;
}

- (NSArray*) registryKeyStates
{
    if(!_registryKeyStates){
        
    NSMutableArray *registryKeyStatesResult = [NSMutableArray array];
    NSArray *registryKeyStates = self.dictionary[@"registryKeyStates"];

    if ([registryKeyStates isKindOfClass:[NSArray class]]){
        for (id tempRegistryKeyState in registryKeyStates){
            [registryKeyStatesResult addObject:tempRegistryKeyState];
        }
    }

    _registryKeyStates = registryKeyStatesResult;
        
    }
    return _registryKeyStates;
}

- (void) setRegistryKeyStates: (NSArray*) val
{
    _registryKeyStates = val;
    self.dictionary[@"registryKeyStates"] = val;
}

- (MSGraphAlertSeverity*) severity
{
    if(!_severity){
        _severity = [self.dictionary[@"severity"] toMSGraphAlertSeverity];
    }
    return _severity;
}

- (void) setSeverity: (MSGraphAlertSeverity*) val
{
    _severity = val;
    self.dictionary[@"severity"] = val;
}

- (NSArray*) sourceMaterials
{
    if([[NSNull null] isEqual:self.dictionary[@"sourceMaterials"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourceMaterials"];
}

- (void) setSourceMaterials: (NSArray*) val
{
    self.dictionary[@"sourceMaterials"] = val;
}

- (MSGraphAlertStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphAlertStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphAlertStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) tags
{
    if([[NSNull null] isEqual:self.dictionary[@"tags"]])
    {
        return nil;
    }   
    return self.dictionary[@"tags"];
}

- (void) setTags: (NSArray*) val
{
    self.dictionary[@"tags"] = val;
}

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSArray*) triggers
{
    if(!_triggers){
        
    NSMutableArray *triggersResult = [NSMutableArray array];
    NSArray *triggers = self.dictionary[@"triggers"];

    if ([triggers isKindOfClass:[NSArray class]]){
        for (id tempAlertTrigger in triggers){
            [triggersResult addObject:tempAlertTrigger];
        }
    }

    _triggers = triggersResult;
        
    }
    return _triggers;
}

- (void) setTriggers: (NSArray*) val
{
    _triggers = val;
    self.dictionary[@"triggers"] = val;
}

- (NSArray*) userStates
{
    if(!_userStates){
        
    NSMutableArray *userStatesResult = [NSMutableArray array];
    NSArray *userStates = self.dictionary[@"userStates"];

    if ([userStates isKindOfClass:[NSArray class]]){
        for (id tempUserSecurityState in userStates){
            [userStatesResult addObject:tempUserSecurityState];
        }
    }

    _userStates = userStatesResult;
        
    }
    return _userStates;
}

- (void) setUserStates: (NSArray*) val
{
    _userStates = val;
    self.dictionary[@"userStates"] = val;
}

- (MSGraphSecurityVendorInformation*) vendorInformation
{
    if(!_vendorInformation){
        _vendorInformation = [[MSGraphSecurityVendorInformation alloc] initWithDictionary: self.dictionary[@"vendorInformation"]];
    }
    return _vendorInformation;
}

- (void) setVendorInformation: (MSGraphSecurityVendorInformation*) val
{
    _vendorInformation = val;
    self.dictionary[@"vendorInformation"] = val;
}

- (NSArray*) vulnerabilityStates
{
    if(!_vulnerabilityStates){
        
    NSMutableArray *vulnerabilityStatesResult = [NSMutableArray array];
    NSArray *vulnerabilityStates = self.dictionary[@"vulnerabilityStates"];

    if ([vulnerabilityStates isKindOfClass:[NSArray class]]){
        for (id tempVulnerabilityState in vulnerabilityStates){
            [vulnerabilityStatesResult addObject:tempVulnerabilityState];
        }
    }

    _vulnerabilityStates = vulnerabilityStatesResult;
        
    }
    return _vulnerabilityStates;
}

- (void) setVulnerabilityStates: (NSArray*) val
{
    _vulnerabilityStates = val;
    self.dictionary[@"vulnerabilityStates"] = val;
}


@end
