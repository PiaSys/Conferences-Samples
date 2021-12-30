// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDirectoryAudit()
{
    NSString* _category;
    NSString* _correlationId;
    MSGraphOperationResult* _result;
    NSString* _resultReason;
    NSString* _activityDisplayName;
    NSDate* _activityDateTime;
    NSString* _loggedByService;
    NSString* _operationType;
    MSGraphAuditActivityInitiator* _initiatedBy;
    NSArray* _targetResources;
    NSArray* _additionalDetails;
}
@end

@implementation MSGraphDirectoryAudit

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.directoryAudit";
    }
    return self;
}
- (NSString*) category
{
    return self.dictionary[@"category"];
}

- (void) setCategory: (NSString*) val
{
    self.dictionary[@"category"] = val;
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

- (MSGraphOperationResult*) result
{
    if(!_result){
        _result = [self.dictionary[@"result"] toMSGraphOperationResult];
    }
    return _result;
}

- (void) setResult: (MSGraphOperationResult*) val
{
    _result = val;
    self.dictionary[@"result"] = val;
}

- (NSString*) resultReason
{
    if([[NSNull null] isEqual:self.dictionary[@"resultReason"]])
    {
        return nil;
    }   
    return self.dictionary[@"resultReason"];
}

- (void) setResultReason: (NSString*) val
{
    self.dictionary[@"resultReason"] = val;
}

- (NSString*) activityDisplayName
{
    return self.dictionary[@"activityDisplayName"];
}

- (void) setActivityDisplayName: (NSString*) val
{
    self.dictionary[@"activityDisplayName"] = val;
}

- (NSDate*) activityDateTime
{
    if(!_activityDateTime){
        _activityDateTime = [NSDate ms_dateFromString: self.dictionary[@"activityDateTime"]];
    }
    return _activityDateTime;
}

- (void) setActivityDateTime: (NSDate*) val
{
    _activityDateTime = val;
    self.dictionary[@"activityDateTime"] = [val ms_toString];
}

- (NSString*) loggedByService
{
    if([[NSNull null] isEqual:self.dictionary[@"loggedByService"]])
    {
        return nil;
    }   
    return self.dictionary[@"loggedByService"];
}

- (void) setLoggedByService: (NSString*) val
{
    self.dictionary[@"loggedByService"] = val;
}

- (NSString*) operationType
{
    if([[NSNull null] isEqual:self.dictionary[@"operationType"]])
    {
        return nil;
    }   
    return self.dictionary[@"operationType"];
}

- (void) setOperationType: (NSString*) val
{
    self.dictionary[@"operationType"] = val;
}

- (MSGraphAuditActivityInitiator*) initiatedBy
{
    if(!_initiatedBy){
        _initiatedBy = [[MSGraphAuditActivityInitiator alloc] initWithDictionary: self.dictionary[@"initiatedBy"]];
    }
    return _initiatedBy;
}

- (void) setInitiatedBy: (MSGraphAuditActivityInitiator*) val
{
    _initiatedBy = val;
    self.dictionary[@"initiatedBy"] = val;
}

- (NSArray*) targetResources
{
    if(!_targetResources){
        
    NSMutableArray *targetResourcesResult = [NSMutableArray array];
    NSArray *targetResources = self.dictionary[@"targetResources"];

    if ([targetResources isKindOfClass:[NSArray class]]){
        for (id tempTargetResource in targetResources){
            [targetResourcesResult addObject:tempTargetResource];
        }
    }

    _targetResources = targetResourcesResult;
        
    }
    return _targetResources;
}

- (void) setTargetResources: (NSArray*) val
{
    _targetResources = val;
    self.dictionary[@"targetResources"] = val;
}

- (NSArray*) additionalDetails
{
    if(!_additionalDetails){
        
    NSMutableArray *additionalDetailsResult = [NSMutableArray array];
    NSArray *additionalDetails = self.dictionary[@"additionalDetails"];

    if ([additionalDetails isKindOfClass:[NSArray class]]){
        for (id tempKeyValue in additionalDetails){
            [additionalDetailsResult addObject:tempKeyValue];
        }
    }

    _additionalDetails = additionalDetailsResult;
        
    }
    return _additionalDetails;
}

- (void) setAdditionalDetails: (NSArray*) val
{
    _additionalDetails = val;
    self.dictionary[@"additionalDetails"] = val;
}


@end
