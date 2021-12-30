// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedEBook()
{
    NSString* _displayName;
    NSString* _managedEBookDescription;
    NSString* _publisher;
    NSDate* _publishedDateTime;
    MSGraphMimeContent* _largeCover;
    NSDate* _createdDateTime;
    NSDate* _lastModifiedDateTime;
    NSString* _informationUrl;
    NSString* _privacyInformationUrl;
    NSArray* _assignments;
    MSGraphEBookInstallSummary* _installSummary;
    NSArray* _deviceStates;
    NSArray* _userStateSummary;
}
@end

@implementation MSGraphManagedEBook

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) managedEBookDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setManagedEBookDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) publisher
{
    if([[NSNull null] isEqual:self.dictionary[@"publisher"]])
    {
        return nil;
    }   
    return self.dictionary[@"publisher"];
}

- (void) setPublisher: (NSString*) val
{
    self.dictionary[@"publisher"] = val;
}

- (NSDate*) publishedDateTime
{
    if(!_publishedDateTime){
        _publishedDateTime = [NSDate ms_dateFromString: self.dictionary[@"publishedDateTime"]];
    }
    return _publishedDateTime;
}

- (void) setPublishedDateTime: (NSDate*) val
{
    _publishedDateTime = val;
    self.dictionary[@"publishedDateTime"] = [val ms_toString];
}

- (MSGraphMimeContent*) largeCover
{
    if(!_largeCover){
        _largeCover = [[MSGraphMimeContent alloc] initWithDictionary: self.dictionary[@"largeCover"]];
    }
    return _largeCover;
}

- (void) setLargeCover: (MSGraphMimeContent*) val
{
    _largeCover = val;
    self.dictionary[@"largeCover"] = val;
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

- (NSString*) informationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"informationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"informationUrl"];
}

- (void) setInformationUrl: (NSString*) val
{
    self.dictionary[@"informationUrl"] = val;
}

- (NSString*) privacyInformationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"privacyInformationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"privacyInformationUrl"];
}

- (void) setPrivacyInformationUrl: (NSString*) val
{
    self.dictionary[@"privacyInformationUrl"] = val;
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempManagedEBookAssignment in assignments){
            [assignmentsResult addObject:tempManagedEBookAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}

- (MSGraphEBookInstallSummary*) installSummary
{
    if(!_installSummary){
        _installSummary = [[MSGraphEBookInstallSummary alloc] initWithDictionary: self.dictionary[@"installSummary"]];
    }
    return _installSummary;
}

- (void) setInstallSummary: (MSGraphEBookInstallSummary*) val
{
    _installSummary = val;
    self.dictionary[@"installSummary"] = val;
}

- (NSArray*) deviceStates
{
    if(!_deviceStates){
        
    NSMutableArray *deviceStatesResult = [NSMutableArray array];
    NSArray *deviceStates = self.dictionary[@"deviceStates"];

    if ([deviceStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceInstallState in deviceStates){
            [deviceStatesResult addObject:tempDeviceInstallState];
        }
    }

    _deviceStates = deviceStatesResult;
        
    }
    return _deviceStates;
}

- (void) setDeviceStates: (NSArray*) val
{
    _deviceStates = val;
    self.dictionary[@"deviceStates"] = val;
}

- (NSArray*) userStateSummary
{
    if(!_userStateSummary){
        
    NSMutableArray *userStateSummaryResult = [NSMutableArray array];
    NSArray *userStateSummary = self.dictionary[@"userStateSummary"];

    if ([userStateSummary isKindOfClass:[NSArray class]]){
        for (id tempUserInstallStateSummary in userStateSummary){
            [userStateSummaryResult addObject:tempUserInstallStateSummary];
        }
    }

    _userStateSummary = userStateSummaryResult;
        
    }
    return _userStateSummary;
}

- (void) setUserStateSummary: (NSArray*) val
{
    _userStateSummary = val;
    self.dictionary[@"userStateSummary"] = val;
}


@end
