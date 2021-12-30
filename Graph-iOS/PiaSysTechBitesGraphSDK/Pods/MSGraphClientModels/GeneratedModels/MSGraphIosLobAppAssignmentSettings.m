// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosLobAppAssignmentSettings()
{
    NSString* _vpnConfigurationId;
}
@end

@implementation MSGraphIosLobAppAssignmentSettings

- (NSString*) vpnConfigurationId
{
    if([[NSNull null] isEqual:self.dictionary[@"vpnConfigurationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"vpnConfigurationId"];
}

- (void) setVpnConfigurationId: (NSString*) val
{
    self.dictionary[@"vpnConfigurationId"] = val;
}

@end
