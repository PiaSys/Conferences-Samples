// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOrganizerMeetingInfo()
{
    MSGraphIdentitySet* _organizer;
}
@end

@implementation MSGraphOrganizerMeetingInfo

- (MSGraphIdentitySet*) organizer
{
    if(!_organizer){
        _organizer = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"organizer"]];
    }
    return _organizer;
}

- (void) setOrganizer: (MSGraphIdentitySet*) val
{
    _organizer = val;
    self.dictionary[@"organizer"] = val;
}

@end
