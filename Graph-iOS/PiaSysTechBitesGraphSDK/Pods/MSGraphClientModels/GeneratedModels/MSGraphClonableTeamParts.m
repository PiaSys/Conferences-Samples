// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphClonableTeamParts.h"

@interface MSGraphClonableTeamParts () {
    MSGraphClonableTeamPartsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphClonableTeamPartsValue enumValue;
@end

@implementation MSGraphClonableTeamParts

+ (MSGraphClonableTeamParts*) apps {
    static MSGraphClonableTeamParts *_apps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _apps = [[MSGraphClonableTeamParts alloc] init];
        _apps.enumValue = MSGraphClonableTeamPartsApps;
    });
    return _apps;
}
+ (MSGraphClonableTeamParts*) tabs {
    static MSGraphClonableTeamParts *_tabs;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tabs = [[MSGraphClonableTeamParts alloc] init];
        _tabs.enumValue = MSGraphClonableTeamPartsTabs;
    });
    return _tabs;
}
+ (MSGraphClonableTeamParts*) settings {
    static MSGraphClonableTeamParts *_settings;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _settings = [[MSGraphClonableTeamParts alloc] init];
        _settings.enumValue = MSGraphClonableTeamPartsSettings;
    });
    return _settings;
}
+ (MSGraphClonableTeamParts*) channels {
    static MSGraphClonableTeamParts *_channels;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _channels = [[MSGraphClonableTeamParts alloc] init];
        _channels.enumValue = MSGraphClonableTeamPartsChannels;
    });
    return _channels;
}
+ (MSGraphClonableTeamParts*) members {
    static MSGraphClonableTeamParts *_members;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _members = [[MSGraphClonableTeamParts alloc] init];
        _members.enumValue = MSGraphClonableTeamPartsMembers;
    });
    return _members;
}

+ (MSGraphClonableTeamParts*) UnknownEnumValue {
    static MSGraphClonableTeamParts *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphClonableTeamParts alloc] init];
        _unknownValue.enumValue = MSGraphClonableTeamPartsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphClonableTeamParts*) clonableTeamPartsWithEnumValue:(MSGraphClonableTeamPartsValue)val {

    switch(val)
    {
        case MSGraphClonableTeamPartsApps:
            return [MSGraphClonableTeamParts apps];
        case MSGraphClonableTeamPartsTabs:
            return [MSGraphClonableTeamParts tabs];
        case MSGraphClonableTeamPartsSettings:
            return [MSGraphClonableTeamParts settings];
        case MSGraphClonableTeamPartsChannels:
            return [MSGraphClonableTeamParts channels];
        case MSGraphClonableTeamPartsMembers:
            return [MSGraphClonableTeamParts members];
        case MSGraphClonableTeamPartsEndOfEnum:
        default:
            return [MSGraphClonableTeamParts UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphClonableTeamPartsApps:
            return @"apps";
        case MSGraphClonableTeamPartsTabs:
            return @"tabs";
        case MSGraphClonableTeamPartsSettings:
            return @"settings";
        case MSGraphClonableTeamPartsChannels:
            return @"channels";
        case MSGraphClonableTeamPartsMembers:
            return @"members";
        case MSGraphClonableTeamPartsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphClonableTeamPartsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphClonableTeamParts)

- (MSGraphClonableTeamParts*) toMSGraphClonableTeamParts{

    if([self isEqualToString:@"apps"])
    {
          return [MSGraphClonableTeamParts apps];
    }
    else if([self isEqualToString:@"tabs"])
    {
          return [MSGraphClonableTeamParts tabs];
    }
    else if([self isEqualToString:@"settings"])
    {
          return [MSGraphClonableTeamParts settings];
    }
    else if([self isEqualToString:@"channels"])
    {
          return [MSGraphClonableTeamParts channels];
    }
    else if([self isEqualToString:@"members"])
    {
          return [MSGraphClonableTeamParts members];
    }
    else {
        return [MSGraphClonableTeamParts UnknownEnumValue];
    }
}

@end
