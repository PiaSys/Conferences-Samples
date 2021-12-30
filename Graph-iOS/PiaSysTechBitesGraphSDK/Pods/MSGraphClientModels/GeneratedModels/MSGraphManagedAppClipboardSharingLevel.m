// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppClipboardSharingLevel.h"

@interface MSGraphManagedAppClipboardSharingLevel () {
    MSGraphManagedAppClipboardSharingLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppClipboardSharingLevelValue enumValue;
@end

@implementation MSGraphManagedAppClipboardSharingLevel

+ (MSGraphManagedAppClipboardSharingLevel*) allApps {
    static MSGraphManagedAppClipboardSharingLevel *_allApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allApps = [[MSGraphManagedAppClipboardSharingLevel alloc] init];
        _allApps.enumValue = MSGraphManagedAppClipboardSharingLevelAllApps;
    });
    return _allApps;
}
+ (MSGraphManagedAppClipboardSharingLevel*) managedAppsWithPasteIn {
    static MSGraphManagedAppClipboardSharingLevel *_managedAppsWithPasteIn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _managedAppsWithPasteIn = [[MSGraphManagedAppClipboardSharingLevel alloc] init];
        _managedAppsWithPasteIn.enumValue = MSGraphManagedAppClipboardSharingLevelManagedAppsWithPasteIn;
    });
    return _managedAppsWithPasteIn;
}
+ (MSGraphManagedAppClipboardSharingLevel*) managedApps {
    static MSGraphManagedAppClipboardSharingLevel *_managedApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _managedApps = [[MSGraphManagedAppClipboardSharingLevel alloc] init];
        _managedApps.enumValue = MSGraphManagedAppClipboardSharingLevelManagedApps;
    });
    return _managedApps;
}
+ (MSGraphManagedAppClipboardSharingLevel*) blocked {
    static MSGraphManagedAppClipboardSharingLevel *_blocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blocked = [[MSGraphManagedAppClipboardSharingLevel alloc] init];
        _blocked.enumValue = MSGraphManagedAppClipboardSharingLevelBlocked;
    });
    return _blocked;
}

+ (MSGraphManagedAppClipboardSharingLevel*) UnknownEnumValue {
    static MSGraphManagedAppClipboardSharingLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppClipboardSharingLevel alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppClipboardSharingLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppClipboardSharingLevel*) managedAppClipboardSharingLevelWithEnumValue:(MSGraphManagedAppClipboardSharingLevelValue)val {

    switch(val)
    {
        case MSGraphManagedAppClipboardSharingLevelAllApps:
            return [MSGraphManagedAppClipboardSharingLevel allApps];
        case MSGraphManagedAppClipboardSharingLevelManagedAppsWithPasteIn:
            return [MSGraphManagedAppClipboardSharingLevel managedAppsWithPasteIn];
        case MSGraphManagedAppClipboardSharingLevelManagedApps:
            return [MSGraphManagedAppClipboardSharingLevel managedApps];
        case MSGraphManagedAppClipboardSharingLevelBlocked:
            return [MSGraphManagedAppClipboardSharingLevel blocked];
        case MSGraphManagedAppClipboardSharingLevelEndOfEnum:
        default:
            return [MSGraphManagedAppClipboardSharingLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppClipboardSharingLevelAllApps:
            return @"allApps";
        case MSGraphManagedAppClipboardSharingLevelManagedAppsWithPasteIn:
            return @"managedAppsWithPasteIn";
        case MSGraphManagedAppClipboardSharingLevelManagedApps:
            return @"managedApps";
        case MSGraphManagedAppClipboardSharingLevelBlocked:
            return @"blocked";
        case MSGraphManagedAppClipboardSharingLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppClipboardSharingLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppClipboardSharingLevel)

- (MSGraphManagedAppClipboardSharingLevel*) toMSGraphManagedAppClipboardSharingLevel{

    if([self isEqualToString:@"allApps"])
    {
          return [MSGraphManagedAppClipboardSharingLevel allApps];
    }
    else if([self isEqualToString:@"managedAppsWithPasteIn"])
    {
          return [MSGraphManagedAppClipboardSharingLevel managedAppsWithPasteIn];
    }
    else if([self isEqualToString:@"managedApps"])
    {
          return [MSGraphManagedAppClipboardSharingLevel managedApps];
    }
    else if([self isEqualToString:@"blocked"])
    {
          return [MSGraphManagedAppClipboardSharingLevel blocked];
    }
    else {
        return [MSGraphManagedAppClipboardSharingLevel UnknownEnumValue];
    }
}

@end
