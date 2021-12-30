// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGroup()
{
    NSArray* _assignedLicenses;
    NSString* _classification;
    NSDate* _createdDateTime;
    NSString* _groupDescription;
    NSString* _displayName;
    BOOL _hasMembersWithLicenseErrors;
    NSArray* _groupTypes;
    MSGraphLicenseProcessingState* _licenseProcessingState;
    NSString* _mail;
    BOOL _mailEnabled;
    NSString* _mailNickname;
    NSDate* _onPremisesLastSyncDateTime;
    NSArray* _onPremisesProvisioningErrors;
    NSString* _onPremisesSecurityIdentifier;
    BOOL _onPremisesSyncEnabled;
    NSString* _preferredDataLocation;
    NSArray* _proxyAddresses;
    NSDate* _renewedDateTime;
    BOOL _securityEnabled;
    NSString* _visibility;
    BOOL _allowExternalSenders;
    BOOL _autoSubscribeNewMembers;
    BOOL _isSubscribedByMail;
    int32_t _unseenCount;
    BOOL _isArchived;
    NSArray* _members;
    NSArray* _memberOf;
    NSArray* _membersWithLicenseErrors;
    NSArray* _transitiveMembers;
    NSArray* _transitiveMemberOf;
    MSGraphDirectoryObject* _createdOnBehalfOf;
    NSArray* _owners;
    NSArray* _settings;
    NSArray* _conversations;
    NSArray* _photos;
    NSArray* _acceptedSenders;
    NSArray* _rejectedSenders;
    NSArray* _threads;
    MSGraphCalendar* _calendar;
    NSArray* _calendarView;
    NSArray* _events;
    MSGraphProfilePhoto* _photo;
    MSGraphDrive* _drive;
    NSArray* _drives;
    NSArray* _sites;
    NSArray* _extensions;
    NSArray* _groupLifecyclePolicies;
    MSGraphPlannerGroup* _planner;
    MSGraphOnenote* _onenote;
    MSGraphTeam* _team;
}
@end

@implementation MSGraphGroup

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.group";
    }
    return self;
}
- (NSArray*) assignedLicenses
{
    if(!_assignedLicenses){
        
    NSMutableArray *assignedLicensesResult = [NSMutableArray array];
    NSArray *assignedLicenses = self.dictionary[@"assignedLicenses"];

    if ([assignedLicenses isKindOfClass:[NSArray class]]){
        for (id tempAssignedLicense in assignedLicenses){
            [assignedLicensesResult addObject:tempAssignedLicense];
        }
    }

    _assignedLicenses = assignedLicensesResult;
        
    }
    return _assignedLicenses;
}

- (void) setAssignedLicenses: (NSArray*) val
{
    _assignedLicenses = val;
    self.dictionary[@"assignedLicenses"] = val;
}

- (NSString*) classification
{
    if([[NSNull null] isEqual:self.dictionary[@"classification"]])
    {
        return nil;
    }   
    return self.dictionary[@"classification"];
}

- (void) setClassification: (NSString*) val
{
    self.dictionary[@"classification"] = val;
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

- (NSString*) groupDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setGroupDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (BOOL) hasMembersWithLicenseErrors
{
    _hasMembersWithLicenseErrors = [self.dictionary[@"hasMembersWithLicenseErrors"] boolValue];
    return _hasMembersWithLicenseErrors;
}

- (void) setHasMembersWithLicenseErrors: (BOOL) val
{
    _hasMembersWithLicenseErrors = val;
    self.dictionary[@"hasMembersWithLicenseErrors"] = @(val);
}

- (NSArray*) groupTypes
{
    return self.dictionary[@"groupTypes"];
}

- (void) setGroupTypes: (NSArray*) val
{
    self.dictionary[@"groupTypes"] = val;
}

- (MSGraphLicenseProcessingState*) licenseProcessingState
{
    if(!_licenseProcessingState){
        _licenseProcessingState = [[MSGraphLicenseProcessingState alloc] initWithDictionary: self.dictionary[@"licenseProcessingState"]];
    }
    return _licenseProcessingState;
}

- (void) setLicenseProcessingState: (MSGraphLicenseProcessingState*) val
{
    _licenseProcessingState = val;
    self.dictionary[@"licenseProcessingState"] = val;
}

- (NSString*) mail
{
    if([[NSNull null] isEqual:self.dictionary[@"mail"]])
    {
        return nil;
    }   
    return self.dictionary[@"mail"];
}

- (void) setMail: (NSString*) val
{
    self.dictionary[@"mail"] = val;
}

- (BOOL) mailEnabled
{
    _mailEnabled = [self.dictionary[@"mailEnabled"] boolValue];
    return _mailEnabled;
}

- (void) setMailEnabled: (BOOL) val
{
    _mailEnabled = val;
    self.dictionary[@"mailEnabled"] = @(val);
}

- (NSString*) mailNickname
{
    if([[NSNull null] isEqual:self.dictionary[@"mailNickname"]])
    {
        return nil;
    }   
    return self.dictionary[@"mailNickname"];
}

- (void) setMailNickname: (NSString*) val
{
    self.dictionary[@"mailNickname"] = val;
}

- (NSDate*) onPremisesLastSyncDateTime
{
    if(!_onPremisesLastSyncDateTime){
        _onPremisesLastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"onPremisesLastSyncDateTime"]];
    }
    return _onPremisesLastSyncDateTime;
}

- (void) setOnPremisesLastSyncDateTime: (NSDate*) val
{
    _onPremisesLastSyncDateTime = val;
    self.dictionary[@"onPremisesLastSyncDateTime"] = [val ms_toString];
}

- (NSArray*) onPremisesProvisioningErrors
{
    if(!_onPremisesProvisioningErrors){
        
    NSMutableArray *onPremisesProvisioningErrorsResult = [NSMutableArray array];
    NSArray *onPremisesProvisioningErrors = self.dictionary[@"onPremisesProvisioningErrors"];

    if ([onPremisesProvisioningErrors isKindOfClass:[NSArray class]]){
        for (id tempOnPremisesProvisioningError in onPremisesProvisioningErrors){
            [onPremisesProvisioningErrorsResult addObject:tempOnPremisesProvisioningError];
        }
    }

    _onPremisesProvisioningErrors = onPremisesProvisioningErrorsResult;
        
    }
    return _onPremisesProvisioningErrors;
}

- (void) setOnPremisesProvisioningErrors: (NSArray*) val
{
    _onPremisesProvisioningErrors = val;
    self.dictionary[@"onPremisesProvisioningErrors"] = val;
}

- (NSString*) onPremisesSecurityIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesSecurityIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesSecurityIdentifier"];
}

- (void) setOnPremisesSecurityIdentifier: (NSString*) val
{
    self.dictionary[@"onPremisesSecurityIdentifier"] = val;
}

- (BOOL) onPremisesSyncEnabled
{
    _onPremisesSyncEnabled = [self.dictionary[@"onPremisesSyncEnabled"] boolValue];
    return _onPremisesSyncEnabled;
}

- (void) setOnPremisesSyncEnabled: (BOOL) val
{
    _onPremisesSyncEnabled = val;
    self.dictionary[@"onPremisesSyncEnabled"] = @(val);
}

- (NSString*) preferredDataLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"preferredDataLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"preferredDataLocation"];
}

- (void) setPreferredDataLocation: (NSString*) val
{
    self.dictionary[@"preferredDataLocation"] = val;
}

- (NSArray*) proxyAddresses
{
    return self.dictionary[@"proxyAddresses"];
}

- (void) setProxyAddresses: (NSArray*) val
{
    self.dictionary[@"proxyAddresses"] = val;
}

- (NSDate*) renewedDateTime
{
    if(!_renewedDateTime){
        _renewedDateTime = [NSDate ms_dateFromString: self.dictionary[@"renewedDateTime"]];
    }
    return _renewedDateTime;
}

- (void) setRenewedDateTime: (NSDate*) val
{
    _renewedDateTime = val;
    self.dictionary[@"renewedDateTime"] = [val ms_toString];
}

- (BOOL) securityEnabled
{
    _securityEnabled = [self.dictionary[@"securityEnabled"] boolValue];
    return _securityEnabled;
}

- (void) setSecurityEnabled: (BOOL) val
{
    _securityEnabled = val;
    self.dictionary[@"securityEnabled"] = @(val);
}

- (NSString*) visibility
{
    if([[NSNull null] isEqual:self.dictionary[@"visibility"]])
    {
        return nil;
    }   
    return self.dictionary[@"visibility"];
}

- (void) setVisibility: (NSString*) val
{
    self.dictionary[@"visibility"] = val;
}

- (BOOL) allowExternalSenders
{
    _allowExternalSenders = [self.dictionary[@"allowExternalSenders"] boolValue];
    return _allowExternalSenders;
}

- (void) setAllowExternalSenders: (BOOL) val
{
    _allowExternalSenders = val;
    self.dictionary[@"allowExternalSenders"] = @(val);
}

- (BOOL) autoSubscribeNewMembers
{
    _autoSubscribeNewMembers = [self.dictionary[@"autoSubscribeNewMembers"] boolValue];
    return _autoSubscribeNewMembers;
}

- (void) setAutoSubscribeNewMembers: (BOOL) val
{
    _autoSubscribeNewMembers = val;
    self.dictionary[@"autoSubscribeNewMembers"] = @(val);
}

- (BOOL) isSubscribedByMail
{
    _isSubscribedByMail = [self.dictionary[@"isSubscribedByMail"] boolValue];
    return _isSubscribedByMail;
}

- (void) setIsSubscribedByMail: (BOOL) val
{
    _isSubscribedByMail = val;
    self.dictionary[@"isSubscribedByMail"] = @(val);
}

- (int32_t) unseenCount
{
    _unseenCount = [self.dictionary[@"unseenCount"] intValue];
    return _unseenCount;
}

- (void) setUnseenCount: (int32_t) val
{
    _unseenCount = val;
    self.dictionary[@"unseenCount"] = @(val);
}

- (BOOL) isArchived
{
    _isArchived = [self.dictionary[@"isArchived"] boolValue];
    return _isArchived;
}

- (void) setIsArchived: (BOOL) val
{
    _isArchived = val;
    self.dictionary[@"isArchived"] = @(val);
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in members){
            [membersResult addObject:tempDirectoryObject];
        }
    }

    _members = membersResult;
        
    }
    return _members;
}

- (void) setMembers: (NSArray*) val
{
    _members = val;
    self.dictionary[@"members"] = val;
}

- (NSArray*) memberOf
{
    if(!_memberOf){
        
    NSMutableArray *memberOfResult = [NSMutableArray array];
    NSArray *memberOf = self.dictionary[@"memberOf"];

    if ([memberOf isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in memberOf){
            [memberOfResult addObject:tempDirectoryObject];
        }
    }

    _memberOf = memberOfResult;
        
    }
    return _memberOf;
}

- (void) setMemberOf: (NSArray*) val
{
    _memberOf = val;
    self.dictionary[@"memberOf"] = val;
}

- (NSArray*) membersWithLicenseErrors
{
    if(!_membersWithLicenseErrors){
        
    NSMutableArray *membersWithLicenseErrorsResult = [NSMutableArray array];
    NSArray *membersWithLicenseErrors = self.dictionary[@"membersWithLicenseErrors"];

    if ([membersWithLicenseErrors isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in membersWithLicenseErrors){
            [membersWithLicenseErrorsResult addObject:tempDirectoryObject];
        }
    }

    _membersWithLicenseErrors = membersWithLicenseErrorsResult;
        
    }
    return _membersWithLicenseErrors;
}

- (void) setMembersWithLicenseErrors: (NSArray*) val
{
    _membersWithLicenseErrors = val;
    self.dictionary[@"membersWithLicenseErrors"] = val;
}

- (NSArray*) transitiveMembers
{
    if(!_transitiveMembers){
        
    NSMutableArray *transitiveMembersResult = [NSMutableArray array];
    NSArray *transitiveMembers = self.dictionary[@"transitiveMembers"];

    if ([transitiveMembers isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in transitiveMembers){
            [transitiveMembersResult addObject:tempDirectoryObject];
        }
    }

    _transitiveMembers = transitiveMembersResult;
        
    }
    return _transitiveMembers;
}

- (void) setTransitiveMembers: (NSArray*) val
{
    _transitiveMembers = val;
    self.dictionary[@"transitiveMembers"] = val;
}

- (NSArray*) transitiveMemberOf
{
    if(!_transitiveMemberOf){
        
    NSMutableArray *transitiveMemberOfResult = [NSMutableArray array];
    NSArray *transitiveMemberOf = self.dictionary[@"transitiveMemberOf"];

    if ([transitiveMemberOf isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in transitiveMemberOf){
            [transitiveMemberOfResult addObject:tempDirectoryObject];
        }
    }

    _transitiveMemberOf = transitiveMemberOfResult;
        
    }
    return _transitiveMemberOf;
}

- (void) setTransitiveMemberOf: (NSArray*) val
{
    _transitiveMemberOf = val;
    self.dictionary[@"transitiveMemberOf"] = val;
}

- (MSGraphDirectoryObject*) createdOnBehalfOf
{
    if(!_createdOnBehalfOf){
        _createdOnBehalfOf = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"createdOnBehalfOf"]];
    }
    return _createdOnBehalfOf;
}

- (void) setCreatedOnBehalfOf: (MSGraphDirectoryObject*) val
{
    _createdOnBehalfOf = val;
    self.dictionary[@"createdOnBehalfOf"] = val;
}

- (NSArray*) owners
{
    if(!_owners){
        
    NSMutableArray *ownersResult = [NSMutableArray array];
    NSArray *owners = self.dictionary[@"owners"];

    if ([owners isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in owners){
            [ownersResult addObject:tempDirectoryObject];
        }
    }

    _owners = ownersResult;
        
    }
    return _owners;
}

- (void) setOwners: (NSArray*) val
{
    _owners = val;
    self.dictionary[@"owners"] = val;
}

- (NSArray*) settings
{
    if(!_settings){
        
    NSMutableArray *settingsResult = [NSMutableArray array];
    NSArray *settings = self.dictionary[@"settings"];

    if ([settings isKindOfClass:[NSArray class]]){
        for (id tempGroupSetting in settings){
            [settingsResult addObject:tempGroupSetting];
        }
    }

    _settings = settingsResult;
        
    }
    return _settings;
}

- (void) setSettings: (NSArray*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}

- (NSArray*) conversations
{
    if(!_conversations){
        
    NSMutableArray *conversationsResult = [NSMutableArray array];
    NSArray *conversations = self.dictionary[@"conversations"];

    if ([conversations isKindOfClass:[NSArray class]]){
        for (id tempConversation in conversations){
            [conversationsResult addObject:tempConversation];
        }
    }

    _conversations = conversationsResult;
        
    }
    return _conversations;
}

- (void) setConversations: (NSArray*) val
{
    _conversations = val;
    self.dictionary[@"conversations"] = val;
}

- (NSArray*) photos
{
    if(!_photos){
        
    NSMutableArray *photosResult = [NSMutableArray array];
    NSArray *photos = self.dictionary[@"photos"];

    if ([photos isKindOfClass:[NSArray class]]){
        for (id tempProfilePhoto in photos){
            [photosResult addObject:tempProfilePhoto];
        }
    }

    _photos = photosResult;
        
    }
    return _photos;
}

- (void) setPhotos: (NSArray*) val
{
    _photos = val;
    self.dictionary[@"photos"] = val;
}

- (NSArray*) acceptedSenders
{
    if(!_acceptedSenders){
        
    NSMutableArray *acceptedSendersResult = [NSMutableArray array];
    NSArray *acceptedSenders = self.dictionary[@"acceptedSenders"];

    if ([acceptedSenders isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in acceptedSenders){
            [acceptedSendersResult addObject:tempDirectoryObject];
        }
    }

    _acceptedSenders = acceptedSendersResult;
        
    }
    return _acceptedSenders;
}

- (void) setAcceptedSenders: (NSArray*) val
{
    _acceptedSenders = val;
    self.dictionary[@"acceptedSenders"] = val;
}

- (NSArray*) rejectedSenders
{
    if(!_rejectedSenders){
        
    NSMutableArray *rejectedSendersResult = [NSMutableArray array];
    NSArray *rejectedSenders = self.dictionary[@"rejectedSenders"];

    if ([rejectedSenders isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in rejectedSenders){
            [rejectedSendersResult addObject:tempDirectoryObject];
        }
    }

    _rejectedSenders = rejectedSendersResult;
        
    }
    return _rejectedSenders;
}

- (void) setRejectedSenders: (NSArray*) val
{
    _rejectedSenders = val;
    self.dictionary[@"rejectedSenders"] = val;
}

- (NSArray*) threads
{
    if(!_threads){
        
    NSMutableArray *threadsResult = [NSMutableArray array];
    NSArray *threads = self.dictionary[@"threads"];

    if ([threads isKindOfClass:[NSArray class]]){
        for (id tempConversationThread in threads){
            [threadsResult addObject:tempConversationThread];
        }
    }

    _threads = threadsResult;
        
    }
    return _threads;
}

- (void) setThreads: (NSArray*) val
{
    _threads = val;
    self.dictionary[@"threads"] = val;
}

- (MSGraphCalendar*) calendar
{
    if(!_calendar){
        _calendar = [[MSGraphCalendar alloc] initWithDictionary: self.dictionary[@"calendar"]];
    }
    return _calendar;
}

- (void) setCalendar: (MSGraphCalendar*) val
{
    _calendar = val;
    self.dictionary[@"calendar"] = val;
}

- (NSArray*) calendarView
{
    if(!_calendarView){
        
    NSMutableArray *calendarViewResult = [NSMutableArray array];
    NSArray *calendarView = self.dictionary[@"calendarView"];

    if ([calendarView isKindOfClass:[NSArray class]]){
        for (id tempEvent in calendarView){
            [calendarViewResult addObject:tempEvent];
        }
    }

    _calendarView = calendarViewResult;
        
    }
    return _calendarView;
}

- (void) setCalendarView: (NSArray*) val
{
    _calendarView = val;
    self.dictionary[@"calendarView"] = val;
}

- (NSArray*) events
{
    if(!_events){
        
    NSMutableArray *eventsResult = [NSMutableArray array];
    NSArray *events = self.dictionary[@"events"];

    if ([events isKindOfClass:[NSArray class]]){
        for (id tempEvent in events){
            [eventsResult addObject:tempEvent];
        }
    }

    _events = eventsResult;
        
    }
    return _events;
}

- (void) setEvents: (NSArray*) val
{
    _events = val;
    self.dictionary[@"events"] = val;
}

- (MSGraphProfilePhoto*) photo
{
    if(!_photo){
        _photo = [[MSGraphProfilePhoto alloc] initWithDictionary: self.dictionary[@"photo"]];
    }
    return _photo;
}

- (void) setPhoto: (MSGraphProfilePhoto*) val
{
    _photo = val;
    self.dictionary[@"photo"] = val;
}

- (MSGraphDrive*) drive
{
    if(!_drive){
        _drive = [[MSGraphDrive alloc] initWithDictionary: self.dictionary[@"drive"]];
    }
    return _drive;
}

- (void) setDrive: (MSGraphDrive*) val
{
    _drive = val;
    self.dictionary[@"drive"] = val;
}

- (NSArray*) drives
{
    if(!_drives){
        
    NSMutableArray *drivesResult = [NSMutableArray array];
    NSArray *drives = self.dictionary[@"drives"];

    if ([drives isKindOfClass:[NSArray class]]){
        for (id tempDrive in drives){
            [drivesResult addObject:tempDrive];
        }
    }

    _drives = drivesResult;
        
    }
    return _drives;
}

- (void) setDrives: (NSArray*) val
{
    _drives = val;
    self.dictionary[@"drives"] = val;
}

- (NSArray*) sites
{
    if(!_sites){
        
    NSMutableArray *sitesResult = [NSMutableArray array];
    NSArray *sites = self.dictionary[@"sites"];

    if ([sites isKindOfClass:[NSArray class]]){
        for (id tempSite in sites){
            [sitesResult addObject:tempSite];
        }
    }

    _sites = sitesResult;
        
    }
    return _sites;
}

- (void) setSites: (NSArray*) val
{
    _sites = val;
    self.dictionary[@"sites"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}

- (NSArray*) groupLifecyclePolicies
{
    if(!_groupLifecyclePolicies){
        
    NSMutableArray *groupLifecyclePoliciesResult = [NSMutableArray array];
    NSArray *groupLifecyclePolicies = self.dictionary[@"groupLifecyclePolicies"];

    if ([groupLifecyclePolicies isKindOfClass:[NSArray class]]){
        for (id tempGroupLifecyclePolicy in groupLifecyclePolicies){
            [groupLifecyclePoliciesResult addObject:tempGroupLifecyclePolicy];
        }
    }

    _groupLifecyclePolicies = groupLifecyclePoliciesResult;
        
    }
    return _groupLifecyclePolicies;
}

- (void) setGroupLifecyclePolicies: (NSArray*) val
{
    _groupLifecyclePolicies = val;
    self.dictionary[@"groupLifecyclePolicies"] = val;
}

- (MSGraphPlannerGroup*) planner
{
    if(!_planner){
        _planner = [[MSGraphPlannerGroup alloc] initWithDictionary: self.dictionary[@"planner"]];
    }
    return _planner;
}

- (void) setPlanner: (MSGraphPlannerGroup*) val
{
    _planner = val;
    self.dictionary[@"planner"] = val;
}

- (MSGraphOnenote*) onenote
{
    if(!_onenote){
        _onenote = [[MSGraphOnenote alloc] initWithDictionary: self.dictionary[@"onenote"]];
    }
    return _onenote;
}

- (void) setOnenote: (MSGraphOnenote*) val
{
    _onenote = val;
    self.dictionary[@"onenote"] = val;
}

- (MSGraphTeam*) team
{
    if(!_team){
        _team = [[MSGraphTeam alloc] initWithDictionary: self.dictionary[@"team"]];
    }
    return _team;
}

- (void) setTeam: (MSGraphTeam*) val
{
    _team = val;
    self.dictionary[@"team"] = val;
}


@end
