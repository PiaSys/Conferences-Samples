// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamClassSettings()
{
    BOOL _notifyGuardiansAboutAssignments;
}
@end

@implementation MSGraphTeamClassSettings

- (BOOL) notifyGuardiansAboutAssignments
{
    _notifyGuardiansAboutAssignments = [self.dictionary[@"notifyGuardiansAboutAssignments"] boolValue];
    return _notifyGuardiansAboutAssignments;
}

- (void) setNotifyGuardiansAboutAssignments: (BOOL) val
{
    _notifyGuardiansAboutAssignments = val;
    self.dictionary[@"notifyGuardiansAboutAssignments"] = @(val);
}

@end
